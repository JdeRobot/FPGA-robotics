#pragma once

#include <memory>

#include "sim_element.h"
#include "verilated.h"
#include "verilated_fst_c.h"

namespace sim {

template <class T>
class DutHandler {
   public:
    DutHandler(int argc, char **argv) {
        Verilated::randReset(2);  // Randomize all bits
        Verilated::traceEverOn(true);
        Verilated::commandArgs(argc, argv);
        dut = std::make_unique<T>();

        // init trace
        m_trace = std::make_unique<VerilatedFstC>();
        dut->trace(m_trace.get(), 99);
        m_trace->open("sim.fst");
    }

    virtual ~DutHandler() {
        if (m_trace) {
            m_trace->flush();
            m_trace->close();
        }
        dut->final();
    }

    virtual void reset(const std::vector<SimElement *> &sim_elements, int reset_cycles = 10) {
        dut->rst = 1;
        for (int i = 0; i < reset_cycles; i++) {
            tick(sim_elements);
        }
        dut->rst = 0;

        for (auto e : sim_elements) e->onReset();
    }

    virtual void tick(const std::vector<SimElement *> &sim_elements) {
        dut->clk = 0;
        dut->eval();

        for (auto e : sim_elements) e->preCycle();
        dut->clk = 1;
        dut->eval();
        for (auto e : sim_elements) e->postCycle();
        dump_trace();

        dut->clk = 0;
        dut->eval();
        dump_trace();
    }

    T *get_dut() { return this->dut.get(); }

   private:
    virtual void dump_trace(bool flush = false) {
        if (m_trace) {
            m_trace->dump(sim_time);
            if (flush) m_trace->flush();
        }
        sim_time += 1;
    }

    std::unique_ptr<VerilatedFstC> m_trace;
    std::unique_ptr<T> dut;
    vluint64_t sim_time = 0;
};

}  // namespace sim
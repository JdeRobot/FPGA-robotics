#pragma once

namespace sim {

class SimElement {
   public:
    virtual ~SimElement() {}
    virtual void onReset() {}
    virtual void postReset() {}
    virtual void preCycle() {}
    virtual void postCycle() {}
};

class SimElementWithGUI : public SimElement {
   public:
    virtual ~SimElementWithGUI() {}
    virtual void onGUIInit() {}
    virtual void onGUIUpdate(bool* p_open) {}
};

};  // namespace sim
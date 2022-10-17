BUILD_DIR?=../build/

include $(BUILD_DIR)/software/include/generated/variables.mak
include $(SOC_DIRECTORY)/software/common.mak

OBJDUMP := $(TARGET_PREFIX)objdump

OBJECTS   = delay.o sccb.o ov7670.o main.o isr.o crt0.o

CFLAGS += -DDEBUG=1

all: bios.bin
	$(PYTHON) -m litex.soc.software.memusage bios.elf $(BUILD_DIR)/software/include/generated/regions.ld $(TRIPLE)

# pull in dependency info for *existing* .o files
-include $(OBJECTS:.o=.d)

%.bin: %.elf
	$(OBJCOPY) -O binary $< $@
	chmod -x $@

bios.elf: $(OBJECTS)
	$(CC) $(LDFLAGS) -T linker.ld -N -o $@ \
		$(OBJECTS) \
		$(PACKAGES:%=-L$(BUILD_DIR)/software/%) \
		-Wl,--gc-sections \
		-Wl,-Map,$@.map \
		$(LIBS:lib%=-l%)
	chmod -x $@

%.asm: %.elf
	$(OBJDUMP) -S -d $^ > $@

main.o: main.c
	$(compile)

crt0.o: $(CPU_DIRECTORY)/crt0.S
	$(assemble)

%.o: %.cpp
	$(compilexx)

%.o: %.c
	$(compile)

%.o: %.S
	$(assemble)

clean:
	$(RM) $(OBJECTS) $(OBJECTS:.o=.d) bios.elf bios.bin .*~ *~

.PHONY: all main.o clean load

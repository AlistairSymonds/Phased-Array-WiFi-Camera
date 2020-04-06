
RV_TOOLCHAIN = /opt/riscv32i/bin/
CC = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-gcc)
OBJCOPY = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-objcopy)
OBJDUMP = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-objdump)
LINKER = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-ld)
CFLAGS = -Wall -O0 $(INC_FLAGS) -ffunction-sections -fdata-sections -march=rv32im
LDFLAGS := -Tpawc_link.ld --gc-sections -e main
BDIR = $(TARGET)_build

TARGET := blinky

BDIR ?= build_$(TARGET)
SRC_DIRS ?= $(TARGET) pawc_lib

SRCS := $(shell find $(SRC_DIRS) -name *.cpp -or -name *.c -or -name *.s)
OBJS := $(SRCS:%=$(BDIR)/%.o)

DEPS := $(OBJS:.o=.d)

INC_DIRS := $(shell find $(SRC_DIRS) -type d)
INC_FLAGS := $(addprefix -I,$(INC_DIRS))


sim_rom_hex.txt: $(BDIR)/$(TARGET).bin
	@echo "Making hext file"
	# $(OBJCOPY) -O verilog --verilog-data-width=4 -I binary $(BDIR)/$(TARGET).bin $(BDIR)/$(TARGET).vlogram
	cp $(BDIR)/$(TARGET).vlogram sim_rom_hex.txt


debug: CFLAGS += -D DEBUG -g
debug: $(BDIR)/sim_rom_hex.txt
	
	@echo "Debug"

$(BDIR)/$(TARGET).bin: $(BDIR)/$(TARGET).elf
	$(OBJCOPY) -S -O binary $(BDIR)/$(TARGET).elf $(BDIR)/$(TARGET).bin
	$(OBJDUMP) -D -m riscv -b binary $@ > $@.dasm



$(BDIR)/$(TARGET).elf: $(OBJS)
	$(LINKER) $(LDFLAGS) $(TARGET_ARCH) $^ -o $@
	$(OBJDUMP) -C -d -g -s $@ > $@.dasm
	elf2hex --bit-width 32 --input $(BDIR)/$(TARGET).elf --output $(BDIR)/$(TARGET).vlogram

$(ASM): $(BDIR)/%.o
	@echo "objs: $(OBJS)"
	@echo "srcs: $(SRCS)"
	$(OBJDUMP) -d -g -S $< > $@

# assembly
$(BDIR)/%.s.o: %.s
	$(MKDIR_P) $(dir $@)
	$(AS) $(ASFLAGS) -c $< -o $@

# c source
$(BDIR)/%.c.o: %.c
	@echo "Compling C"
	$(MKDIR_P) $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@
	$(OBJDUMP) -d -g -S $@ > $@.dasm

# c++ source
$(BDIR)/%.cpp.o: %.cpp
	@echo "Compling C++"
	$(MKDIR_P) $(dir $@)
	$(CC) $(CFLAGS) $(CFLAGS) -c $< -o $@
	$(OBJDUMP) -d -g -S $@ > $@.dasm



clean:
	rm -rf $(BDIR)

blinky: $(ASM) 

MKDIR_P ?= mkdir -p

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true

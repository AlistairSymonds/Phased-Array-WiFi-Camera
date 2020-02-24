
RV_TOOLCHAIN = /opt/riscv32i/bin/
CC = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-gcc)
OBJCOPY = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-objcopy)
OBJDUMP = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-objdump)
LINKER = $(join $(RV_TOOLCHAIN), riscv32-unknown-elf-ld)
CFLAGS = -Wall -O0 $(INC_PARAMS) -g
BDIR = $(TARGET)_build
TARGET := blinky

SRC	= $(wildcard $(TARGET)/*.cpp)
OBJS = $(patsubst $(TARGET)/%.cpp, $(BDIR)/%.o, $(SRC))
ASM = $(patsubst $(TARGET)/%.cpp, $(BDIR)/%.dasm, $(SRC))

INC = pawc_lib
INC_PARAMS=$(foreach d, $(INC), -I$d)

#$(BDIR)/%.hex: %.elf
#	$(OBJCOPY) -j .text -j .data -O ihex $&lt; $@
# 

$(BDIR)/$(TARGET).elf: $(BDIR)/%.o
	$(CC) $(LDFLAGS) $(TARGET_ARCH) $^ -o $@

$(OBJS): $(SRC) $(BDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(ASM): $(OBJS) 
	$(OBJDUMP) -d -g -S $(OBJS) > $(ASM)


$(BDIR):
	mkdir -p $(BDIR)

blinky: $(ASM)




CC = arm-none-eabi-gcc
CFLAGS = -mcpu=cortex-m3 -mthumb -O2
LDFLAGS = -nostartfiles -Ttext=0x08000000

SRC = src/main.c
OUT = build/firmware.elf

all: $(OUT)

$(OUT): $(SRC)
    mkdir -p build
    $(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
    rm -rf build

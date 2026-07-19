# Playground MC68000 Assembly
The legendary 68K CPU just before X86 and after 8-bit golden age.

### Toolchains 
- Compile with `vasm` & Link with `m68k-linux-gnu-ld`
- Emu with `qemu-m68k` on Linux x86-64 / Fedora.
- Code on `neovim`

### Homebrew 68K Plans 
I'm choosing between :
- pure 5V Design with 68K, 2~4x 512K SRAM, 74HC/VRAM-based VGA output, CF Card.. etc
- simple 5-parts board : 1x Pico2, 1x 68K, 2x 512K SRAM, 1x 74LVC245 which handles :
    - UART, SPI, I2C
    - MicroSD Card
    - VGA Port Output
    - I/O native USB Host
    - Keyboard / Mouse
    - PWM Audio

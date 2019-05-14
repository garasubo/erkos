# ErkOS
This is a prototype embedded operating system written in Rust.
The target architecture is Cortex-M based board.

## Structure
* `app`: An example application for Nucleo-F429ZI board
* `qemu_app`: An example application for QEMU
* `arch`: device drivers for ARMv7-M peripherals
* `device`: device drivers for STM32F4291ZI
* `kernel`: The core structs of this OS. This has dependency on `arch`, but no dependency on `device`
* `log`: utility for logging (based on [The Embedonomicon](https://docs.rust-embedded.org/embedonomicon/logging.html) example code)
* `rt`: runtime for ARMv7-M baremetal environment
* `util`: utilities independent from architecture

## Reference
* [The Embedonomicon](https://docs.rust-embedded.org/embedonomicon/)
* [Tock](https://www.tockos.org/)

/* The entry point is the reset handler */
ENTRY(Reset);

EXTERN(RESET_VECTOR);
EXTERN(EXCEPTIONS);
EXTERN(IRQS);

SECTIONS
{
  .vector_table ORIGIN(FLASH) :
  {
    /* First entry: initial Stack Pointer value */
    LONG(ORIGIN(RAM) + LENGTH(RAM));
    /* Second entry: reset vector */
    KEEP(*(.vector_table.reset_vector));
    KEEP(*(.vector_table.exceptions));
  } > FLASH

  .text : 
  {
    *(.text .text.*);
  } > FLASH

  .ARM.exidx   ALIGN(4) : { *(.ARM.exidx* .gnu.linkonce.armexidx.*)  } > FLASH

  .rodata :
  {
      *(.rodata .rodata.*);
  } > FLASH

  _sivector_table = LOADADDR(.vector_table);

  .app_vector_table (NOLOAD) : {
    _svector_table = .;
    . = . + 0x40;
    _evector_table = .;
    _sirq_table = .;
    KEEP(*(.irq_table));
    _eirq_table = .;
  } > RAM

  .bss (NOLOAD):
  {
    _sbss = .;
    *(.bss .bss.*);
    _ebss = .;
  } > RAM

  .data : AT(ADDR(.rodata) + SIZEOF(.rodata))
  {
    _sdata = .;
    *(.data .data.*);
    _edata = .;
  } > RAM

  _sidata = LOADADDR(.data);

  .uninit ALIGN(0x10): 
  {
    _suinit = .;
    *(.uninit .uninit.*);
    _euninit = .;
  } > RAM

  /DISCARD/ :
  {
    *(.ARM.exidx.*);
  }
}

PROVIDE(NMI = DefaultExceptionHandler);
PROVIDE(HardFault = DefaultExceptionHandler);
PROVIDE(MemManage = DefaultExceptionHandler);
PROVIDE(BusFault = DefaultExceptionHandler);
PROVIDE(UsageFault = DefaultExceptionHandler);
PROVIDE(SVCall = DefaultExceptionHandler);
PROVIDE(PendSV = DefaultExceptionHandler);
PROVIDE(SysTick = DefaultExceptionHandler);


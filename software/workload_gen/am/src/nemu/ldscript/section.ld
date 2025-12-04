ENTRY(_start)

SECTIONS {
  . = ORIGIN(ram);
  . = 0x100000000;
  b1 = .;
  .text :{
    *(entry)
    *(.text)
    *(.text.*)
    *(.init)
  }
  e1 = .;

  etext = .;
  _etext = .;
  
  . = 0x100040000;
  b2 = .;
  .rodata 0x100040000 :{
    *(rodata*)
    *(.rodata*)
    . = ALIGN(0x10);
    *(.srodata*)
  }
  e2 = .;

  . = 0x100080000;
  b3 = .;
  .data 0x100080000: {
    *(.data)
    *(.data*)
    *(.sdata)
    *(.interval)
  }
  e3 = .;
  edata = .;
  _data = .;

  . = 0x100100000;
  b4 = .;
  .bss 0x100100000: {
	_bss_start = .;
    *(.bss*)
    *(.sbss*)
    *(.scommon)
  }
  e4 = .;
  _stack_top = ALIGN(0x1000);
  . = _stack_top + 0x2000;
  _stack_pointer = .;
  end = .;
  _end = .;
  _heap_start = ALIGN(0x1000);
  _pmem_start = pmem_base;
  _pmem_end = _pmem_start + LENGTH(ram);
}

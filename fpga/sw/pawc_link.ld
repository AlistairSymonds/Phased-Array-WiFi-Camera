SECTIONS
{
  . = 0x00000;
  .text :
    {
        *(.text.main);
        *(.text*);
    }
  . = 0x0000800;
  .data : { *(.data) }
  .bss : { *(.bss) }
}
ENTRY(main)
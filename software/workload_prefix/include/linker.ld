OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
    . = 0x100000000;
    .text :{
        *(entry)
    }
}


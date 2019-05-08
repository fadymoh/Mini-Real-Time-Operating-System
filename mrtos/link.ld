MEMORY
    {    
        ram : ORIGIN = 0, LENGTH = 10485760
        stack : ORIGIN = 10485760, LENGTH = 10485760
    }


SECTIONS
{
    . = 0x00;

    .text : 
    {
        *(.text)
    } > ram

    .data : 
    {
        *(.data)
    } > ram

    .sdata : {
        *(.sdata)
    } > ram
    
    .rodata : {
        *(.rodata)
    } > ram 

    .eh_frame_hdr : {
        *(.eh_frame_hdr)
    } > ram 

    .eh_frame : { 
        *(.eh_frame)
    } > ram 

    .bss : 
    {
        *(.bss)
    } > ram 

    .sbss : 
    {
        *(.sbss)
    } > ram 

    _end = .;
}


PROVIDE(_endram = ORIGIN(stack));
PROVIDE(_fstack = ORIGIN(stack) + LENGTH(stack) - 4);

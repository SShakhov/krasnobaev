        .data
number:
        .long 321

format_string:
        .string "Hello! %d\n"
        .text
        .globl  main

main:

pushl   %ebp
movl    %esp, %ebp

pushl   number
pushl   $format_string
call    printf
addl    $8, %esp

movl    %ebp, %esp
popl    %ebp
ret

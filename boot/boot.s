.set ALIGN,    1<<0             
.set MEMINFO,  1<<1             
.set FLAGS,    ALIGN | MEMINFO  
.set MAGIC,    0x1BADB002       
.set CHECKSUM, -(MAGIC + FLAGS) 

# Multiboot header
.section .multiboot
.align 4
.long MAGIC
.long FLAGS
.long CHECKSUM

.section .bss
.align 16
stack_bottom:
.skip 16384 # 16 KiB
stack_top:


.section .text
.global _start
.type _start, @function
_start:
	# Setup stack
	mov $stack_top, %esp

	# Initialize crucial processor state below this line.

	# Enter the kernel
	call kernel_main

	# If we get here, loop indefinitely.
	cli
1:	hlt
	jmp 1b

# Set the size of the _start symbol to the current location minus its start, for debugging purposes.
.size _start, . - _start

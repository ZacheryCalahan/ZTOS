# for safe use later

# if grub-file --is-x86-multiboot myos.bin; then
#   echo multiboot confirmed
# else
#   echo the file is not multiboot
# fi

clean:
	rm -rf *.o
	rm -rf *.bin
	rm -rf *.iso
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
  	char *shellcode = argv[1];
  
	printf("Shellcode Length: %d\n", strlen(shellcode));
	printf("Shellcode : %s\n", shellcode);
	
	int (*ret)();
	ret = (int (*)()) shellcode;
	(int)(*ret)();
  
}


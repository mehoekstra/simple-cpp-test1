#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[])
{
    int len;
    printf("Hello world! \n");
    len = strlen(argv[1]);
    printf("My len: %d\n", len);
}
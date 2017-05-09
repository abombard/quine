/* My little Grace */
#include<stdio.h>
#include<fcntl.h>
#define P "/* My little Grace */%c#include<stdio.h>%c#include<fcntl.h>%c#define P %c%s%c%c#define N %c%s%c%c#define M int main(){int fd=open(N,O_CREAT|O_RDWR,0644);dprintf(fd,P,10,10,10,34,P,34,10,34,N,34,10,10,10);return 0;}%cM%c"
#define N "Grace_kid.c"
#define M int main(){int fd=open(N,O_CREAT|O_RDWR,0644);dprintf(fd,P,10,10,10,34,P,34,10,34,N,34,10,10,10);return 0;}
M

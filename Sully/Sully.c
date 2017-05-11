#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
int i = 5;
int main(){if(!strcmp(__FILE__,"Sully.c"))i++;if(i==0)return 0;char*p="#include<stdio.h>%c#include<fcntl.h>%c#include<stdlib.h>%c#include<unistd.h>%c#include<string.h>%cint i = %d;%cint main(){if(!strcmp(__FILE__,%cSully.c%c))i++;if(i==0)return 0;char*p=%c%s%c;char e[16];char f[16];sprintf(e,%cSully_%%d%c,i-1);sprintf(f,%c%%s.c%c, e);int fd=open(f,O_CREAT|O_RDWR,0644);int n=dprintf(fd,p,10,10,10,10,10,i-1,10,34,34,34,p,34,34,34,34,34,34,34,10);ftruncate(fd,n);char cmd[512];sprintf(cmd,%cgcc -Wall -Wextra -Werror %%s -o %%s;./%%s%c,f,e,e);system(cmd);return 0;}%c";char e[16];char f[16];sprintf(e,"Sully_%d",i-1);sprintf(f,"%s.c", e);int fd=open(f,O_CREAT|O_RDWR,0644);int n=dprintf(fd,p,10,10,10,10,10,i-1,10,34,34,34,p,34,34,34,34,34,34,34,10);ftruncate(fd,n);char cmd[512];sprintf(cmd,"gcc -Wall -Wextra -Werror %s -o %s;./%s",f,e,e);system(cmd);return 0;}

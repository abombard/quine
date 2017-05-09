#include<stdio.h>
#include<fcntl.h>
#include<stdlib.h>
int i = 5;
int main(){if(i==0)return 0;char*p="#include<stdio.h>%c#include<fcntl.h>%c#include<stdlib.h>%cint i = %d;%cint main(){if(i==0)return 0;char*p=%c%s%c;char e[16];char f[16];sprintf(e,%cSully_%%d%c,i);sprintf(f,%c%%s.c%c, e);int fd=open(f,O_CREAT|O_RDWR,0644);dprintf(fd,p,10,10,10,i-1,10,34,p,34,34,34,34,34,34,34,10);char cmd[512];sprintf(cmd,%cgcc -Wall -Wextra -Werror %%s -o %%s;./%%s%c,f,e,e);system(cmd);return 0;}%c";char e[16];char f[16];sprintf(e,"Sully_%d",i);sprintf(f,"%s.c", e);int fd=open(f,O_CREAT|O_RDWR,0644);dprintf(fd,p,10,10,10,i-1,10,34,p,34,34,34,34,34,34,34,10);char cmd[512];sprintf(cmd,"gcc -Wall -Wextra -Werror %s -o %s;./%s",f,e,e);system(cmd);return 0;}

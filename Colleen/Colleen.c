/* My little quine */
#include<stdio.h>
void quine(char*p){printf(p,10,10,10,34,p,34,10);}
int main(){/*yolo*/char*p="/* My little quine */%c#include<stdio.h>%cvoid quine(char*p){printf(p,10,10,10,34,p,34,10);}%cint main(){/*yolo*/char*p=%c%s%c;quine(p);return 0;}%c";quine(p);return 0;}

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define FALSE 0
#define TRUE 1

int substring(char* main_string,char* sub_string)
{
    int flag;
    for(int i=0;i<strlen(main_string)-strlen(sub_string)-1;i++)
    {
        flag = TRUE;
        for(int j=0;j<strlen(sub_string);j++){
            if(main_string[i+j]!=sub_string[j]) flag = FALSE;
        }
        if(flag==TRUE) return i;
    }
    return flag;
}

int main()
{
    char* main[1000],sub[1000];
    printf("Enter main string:\n");
    gets(main);
    printf("Enter substring:\n");
    gets(sub);
    int pos = substring(main,sub);
    switch (pos)
    {
    case FALSE:
        printf("Substring not found in mainstring.");
        break;
    default:
        printf("Substring found in mainstring in position %d.",pos);
        break;
    }
    return 0;
}
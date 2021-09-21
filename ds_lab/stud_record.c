#include<stdio.h>
struct STUDENT_RECORD{
    char* srn[20],name[50];
    int sem,srn_num;
    int marks[5];
};
typedef struct STUDENT_RECORD stud;

void stud_sort(stud*,int);
void swap(stud*,stud*);
int average(stud*,int,int);
void display_stud(stud*,int);
int main()
{
    stud st[100];
    int n;
    printf("Enter number of students:");
    scanf("%d",&n);
    for(int i=0;i<n;i++){
        printf("Enter srn,srn num,name,semester:\n");
        scanf("%s%d%s%d",st[i].srn,&st[i].srn_num,st[i].name,&st[i].sem);
        printf("Enter the 5 subject marks:");
        scanf("%d%d%d%d%d",&st[i].marks[0],&st[i].marks[1],&st[i].marks[2],&st[i].marks[3],&st[i].marks[4]);
    }
    stud* ptr = &st;
    stud_sort(ptr,n);
    display_stud(ptr,n);
    printf("Enter the subject to calculate average marks:");
    int sub;
    scanf("%d",&sub);
    printf("Average marks in subject %d=%d",sub,average(ptr,sub,n));
    return 0;
}

void display_stud(stud* ptr,int n){
    printf("SRN\tSRN number\tName\tSemester\n");
    for(int i=0;i<n;i++){
        printf("%s\t%d\t%s\t%d\n",ptr[i].srn,ptr[i].srn_num,ptr[i].name,ptr[i].sem);
    }
}

int average(stud* ptr,int sub,int n){
    int avg=0;
    for(int i=0;i<n;i++){
        avg+=(ptr+i)->marks[sub];
    }
    return avg/n;
}

void stud_sort(stud* ptr,int n){
    for(int i=0;i<n;i++){
        for(int j=i;j<n;j++){
            if((ptr+i)->srn_num>(ptr+j)->srn_num) swap(ptr+i,ptr+j);
        }
    }
}

void swap(stud* a,stud* b){
    stud temp;
    temp = *a;
    *a = *b;
    *b = temp;
}
#include<stdio.h>
#include<stdlib.h>
typedef struct NODE{
    int data;
    struct NODE *link;
} node;

void insert(node** first,int ele){
    node* temp = malloc(sizeof(node));
    temp->data = ele;
    temp->link = NULL;
    if(*first==NULL){
        *first = temp;
    }
    else{
        temp->link = *first;
        *first = temp;
    }
}

void display(node* first){
    if(first==NULL) printf("\nEmpty list");
    else{
        node* cur = first;
        while(cur!=NULL) {
            printf("%d\n",cur->data);
            cur = cur->link;
        }
    }
}

void alternate(node** first){
    node* prev = *first;
    node* cur = prev->link;
    while(prev->link!=NULL && cur->link!=NULL){
        prev->link = cur->link;
        prev=cur->link;
        free(cur);
        if(prev->link!=NULL) cur = prev->link;
        else break;
    }
    prev->link=NULL;
    free(cur);
}

int main()
{
    node* first = NULL;
    int choice,ele;
    while(1){
        printf("1)Insert at front\n2)Display\n3)Delete alternate\n");
        scanf("%d",&choice);
        switch(choice){
            case 1: printf("Enter element:");
                    scanf("%d",&ele);
                    insert(&first,ele);
                    break;
            case 2: display(first);
                    break;
            case 3: alternate(&first);
                    break;
            default:continue;
        }
    }
    return 0;
}
#include<stdio.h>
struct IPL_PLAYER_RECORD{
    char* name[100],team[100];
    int score_match[14];
};

typedef struct IPL_PLAYER_RECORD ipl;

int num_matches(ipl*,int,int);
int max_score(ipl*,int,int);
void display_player(ipl*,int);

int main()
{
    ipl arr[100];
    printf("Enter the number of players:");
    int n;
    scanf("%d",&n);
    for(int i=0;i<n;i++){
        printf("Enter Name,Team name,Player score for past 14 matches(-1 if player did not play):\n");
        scanf("%s%s",arr[i].name,arr[i].team);
        for(int j=0;j<14;j++){
            scanf("%d",&(arr[i].score_match[j]));
        }
    }
    ipl* ptr = &arr;
    display_player(ptr,n);
    printf("Chose player for number of matches:");
    int match,max;
    scanf("%d",&match);
    printf("Number of matches played by player %s is %d",arr[match-1].name,num_matches(ptr,match-1,n));
    printf("\nChose which match you want to see max score for:");
    scanf("%d",&max);
    int num = max_score(ptr,max-1,n);
    printf("The max score in match %d is %d",max,num);
    return 0;
}

void display_player(ipl* ptr,int n)
{
    printf("\tNAME\tTEAM NAME\n");
    for(int i=0;i<n;i++) printf("%d)\t%s\t%s\n",i+1,ptr[i].name,ptr[i].team);
}

int num_matches(ipl* ptr,int buff,int n)
{
    int count=0;
    for(int i=0;i<14;i++){
        if((ptr+buff)->score_match[i]!=-1) count++;
    }
    return count;
}

int max_score(ipl* ptr,int match,int n){
    int max = 0;
    for(int i=0;i<n;i++){
        if(max<(ptr+i)->score_match[match])
            max = (ptr+i)->score_match[match];
    }
    return max;
}
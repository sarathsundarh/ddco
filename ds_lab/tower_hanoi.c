#include<stdio.h>

void towerOfHanoi(int n, char* from_rod, char* to_rod, char* aux_rod)
{
    if (n == 1)
    {
        printf("Move disk 1 from rod %s to rod %s\n",from_rod,to_rod);
        return;
    }
    towerOfHanoi(n - 1, from_rod, aux_rod, to_rod);
    printf("Move disk %d from rod %s to rod %s\n",n,from_rod,to_rod);
    towerOfHanoi(n - 1, aux_rod, to_rod, from_rod);
}

int main()
{
    int num_disk = 4;
    towerOfHanoi(num_disk,"A","C","B");
    return 0;
}


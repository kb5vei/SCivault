#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <iostream>
using namespace std;

void shuffle(int *arr, size_t n)
{
    if (n > 1) 
    {
        size_t i;
        srand(time(NULL));
        for (i = 0; i < n - 1; i++) 
        {
          size_t j = i + rand() / (RAND_MAX / (n - i) + 1);
          int t = arr[j];
          arr[j] = arr[i];
          arr[i] = t;
        }
    }
}

int main(int argc, char** argv)
{
    int i;
int argint =atoi(argv[1])-1;

    int arr[argint ];
    for (i=0; i<argint; i++){
        arr[i] = i;
    }
    shuffle(arr, argint);
    for (i=0; i<argint; i++){
        printf("%d ", arr[i]);
	printf("\n");
    }


	cout << argint << "\n";
}


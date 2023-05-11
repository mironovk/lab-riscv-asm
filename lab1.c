#include <stdio.h>

#define N 4
#define M 3

void max_item_index(int arr[][M], int index[2]);
void printer(int arr[][M]);

int main()
{
	int arr[N][M] = {{0, 1, 2}, {3, 4, 5}, {66, 77, 8}, {9, 10, 11}};
	int index[2] = {0, 0};
	printer(arr);

	max_item_index(arr, index);

	printf("i = %d,\tj = %d\n", index[0], index[1]);
	
	return 0;
}

void printer(int arr[][M])
{
	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < M; j++)
			printf("%d\t", arr[i][j]);
		printf("\n");
	}
}

void max_item_index(int arr[][M], int index[2])
{

	for(int i = 0; i < N; i++)
	{
		for(int j = 0; j < M; j++)
		{
			if(arr[i][j] > arr[index[0]][index[1]])
			{
				index[0] = i;
				index[1] = j;
			}		
		}
	}
	return;
}

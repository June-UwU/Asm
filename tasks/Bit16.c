#include <stdio.h>
#include <stdlib.h>

const size_t size = 16;

void GetBinary(char *array , size_t size)
{
	printf("enter the binary 16 bit\n");
	for(int i = size - 1; i >= 0; i--)
	{
		scanf("%c",&array[i]);
	}
}

int Convert(const char * array,size_t size)
{
	int power = 1;
	int ret = 0;
	for(size_t i = 0; i < size; i++)
	{
		if(array[i] == '1')
		{
			if(power == 1)
			{
				ret += 1;
			}
			else
			{
				int eval = 1;
				for(size_t j = 0; j < power; j++)
				{
					eval *= 2;
				}
				ret += eval;
			}
		}
		power++;
	}
	return ret;
}

int main(int argc, char const *argv[])
{
	char array[16];
	GetBinary(array,size);
	int ret = Convert(array,size);
	printf("%d",ret);
	return 0;
}
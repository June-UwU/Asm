#include <stdio.h>
#include <stdlib.h>
const size_t size =32;

void GetHex(char *array)
{
	printf("Enter the Hex Code 32 bit \n");
	for(int i = size; i > 0; i-- )
	{
		scanf("%c",&array[i]);
	}
}
// might over flow the int space it sure will
long long Convert(const char* array)
{
	long long ret = 0;
	int power = 1;
	for(int i = 0; i < size; i++)
	{
		if (array[i] != '0')
		{
			if(power == 1 )
			{
				ret += 1;
				power++;
				continue;
			}
			switch(array[i])
			{
				case '1':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += eval;
				}break;
				case '2':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (2 * eval);
				}break;
				case '3':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (3 * eval);
				}break;
				case '4':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (4 * eval);
				}break;
				case '5':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (5 * eval);
				}break;
				case '6':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (6 * eval);
				}break;
				case '7':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (7 * eval);
				}break;
				case '8':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (8 * eval);
				}break;
				case '9':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (9 * eval);
				}break;
				case 'A':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (10 * eval);
				}break;
				case 'B':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (11 * eval);
				}break;
				case 'C':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (12 * eval);
				}break;
				case 'D':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (13 * eval);
				}break;
				case 'E':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (14 * eval);
				}break;
				case 'F':
				{
					long long eval = 1; 
					for(int j = 0;j < power; j++)
					{
						eval *= 16;
					}
					ret += (15 * eval);
				}break;
				default:
				{

				}break;
			}
		}
		power++;
	}
	return ret;
}

int main(int argc, char const *argv[])
{
	char array[32];
	GetHex(array);
	long long ret = Convert(array);
	printf("%ll",ret);
	return 0;
}
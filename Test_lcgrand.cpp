#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include "lcgrand.c"
#include <time.h>

using namespace std;


int main(void)
{
	int max=100, min=10;
	long A;
	for(int i=0;i<125;++i)
	{
		lcgrand(i%100);
		A=lcgrandgt(i%100);
		A = A * max / MODLUS  + min;
		cout << A << endl;
	}
	system("pause");
	return 0;
}

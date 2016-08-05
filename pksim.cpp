#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <fstream>
#include "lcgrand.c"

using namespace std;

int M=10;		//number of boxes
int N=3;		//number of devices
int a=0;
float empty=0;
float collided=0;
float one=0;

int box[100]={0};	//box
int pk[100]={0};		//幾個box有發生碰撞

int cycle=100000000;		//Random Access次數
float TotalNc=0;

int main(void)
{
	ofstream filePtr;
	//filePtr.open("Simulation Ne Ns Nc M=10 N=5-20.csv", ios::out);
	filePtr.open("Simulation Ne Ns Nc MN M=1 to 48 N=3.csv", ios::out);
	ofstream filePtrw;
	//filePtrw.open("ConfidenceInterval Pe M=10 N=5-20.csv", ios::out);
	ofstream filePtrx;
	//filePtrx.open("ConfidenceInterval Ps M=10 N=5-20.csv", ios::out);
	ofstream filePtry;
	//filePtry.open("ConfidenceInterval Pc M=10 N=5-20.csv", ios::out);
	//int simcase[9]={1,2,8,16,32,64,128,256,512};
	//for(int i_M=0; i_M<9; i_M++)
	for(int i_M=1; i_M<=48; i_M++)
	{
		//int M=simcase[i_M];
		int M=i_M;
		int pk[100]={0};
		float Ne=0;
		float Ns=0;
		float Nc=0;
		float tuser=0;
		float cuser=0;

		cout<<"M="<<M<<"  N="<<N<<endl;
	//	filePtr<<"M="<<M<<"  N="<<N<<endl;

		for(int t=1; t<=cycle; t++)
		{
			int box[100]={0};

			for(int i=1; i<=M; i++)//產生M個球 隨機丟入N個box內
			{
				a=((int)(N*lcgrand(2)));
				box[a]=box[a]+1;
				cout << "box[" << a << "]: " << box[a] << endl;
				system("pause");
			}

			empty=0;
			collided=0;
			one=0;

		//	for(int g=0; g<=N-1; g++)
			//{
			//	cout<<"box["<<g<<"]="<<box[g]<<endl;
		//	}

			for(int j=0; j<=N-1; j++)//統計有幾個box內剛好一顆球
			{
				if(box[j]==0)
				{
					empty+=1;
				};
				if(box[j]==1)
				{
					one+=1;
				};
				if(box[j]>=2)
				{
					collided+=1;
				};
			}
			//要做Confidence Interval 所以要把每個cylce的值都儲存下來
			filePtrw<<empty/N<<",";
			filePtrx<<one/N<<",";
			filePtry<<collided/N<<",";

			Ne=Ne+empty;
			Ns=Ns+one;
			Nc=Nc+collided;
			tuser=tuser+M; //全部傳送次數
			cuser=cuser+(M-one);//碰撞的次數=(傳送次數-成功的個數)累加


		}
		filePtrw<<endl;
		filePtrx<<endl;
		filePtry<<endl;

		cout<<"Ne="<<Ne/cycle<<endl;
		cout<<"Ns="<<Ns/cycle<<endl;
		cout<<"Nc="<<Nc/cycle<<endl;
		cout<<"tuser="<<tuser<<",cuser="<<cuser<<"cuser/tuser="<<cuser/tuser<<endl;
		cout<<"Ns/tuser="<<Ns/tuser<<endl;


		filePtr<<Ne/cycle<<",";
		filePtr<<Ns/cycle<<",";
		filePtr<<Nc/cycle<<",";
		filePtr<<cuser/tuser<<",";
		filePtr<<Ns/tuser<<",";
		filePtr<<endl;
	}
	filePtr.close();
	filePtrw.close();
	filePtrx.close();
	filePtry.close();

	system("pause");
	return 0;
}

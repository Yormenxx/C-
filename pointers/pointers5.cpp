#include<iostream>

using namespace std;

int main(){
	
	
	//int myArray[5];//array estatico
	
	int size;
	cout<<"Enter the size: ";cin>>size;
	
	int* myArray = new int[size];
	
	for(int i=0; i<size; i++){
		cout<<"Arrya ["<< i << "] : ";
		cin>>myArray[i];
	}
	
	for(int i =0; i<size;i++){
		cout<< *(myArray+i)<<" ";
	}
	
	delete[]myArray;
	myArray=NULL;
	
	
	
	
	
	return 0;
}






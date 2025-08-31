/*
Un puntero vacío en C++ es un puntero de propósito general, es decir, 
un puntero especial que puede apuntar a objetos de cualquier tipo. 
Es un puntero sin tipo, también conocido como puntero genérico.
*/

#include<iostream>

using namespace std;

void printNumber(int* numberPtr){
	cout<< *numberPtr << endl;
}

void printChar(char* charPtr){
	cout<< *charPtr << endl;
}

void print(void*ptr,char type){
	switch (type){
		
		case 'i':cout<<*((int*)ptr)<<endl;break;//handle int*
		case 'c':cout<<((char*)ptr)<<endl;break;//handle char*
		default:cout<<"something went wrong";break;
		
		
		
	}	
}


int main(){
	
	int number = 5;
	char letter = 'a';
	//printChar(&letter);
	
	
	print(&number,'i');
	
	return 0;
}



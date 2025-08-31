#include<iostream>

using namespace std;

int main(){
	
	int numero;
	int i;
	cout<<"Ingrese un numero: ";cin>>numero;
	
	while(numero !=0){
		++i;
		cout<<"Ingrese otro numero: ";cin>>numero;
		
	}
	cout<<"Total del numero de valores mayores a 0: "<<i;
	
	
	
	
	return 0;
}

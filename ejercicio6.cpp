#include<iostream>

using namespace std;

int main(){
	
	int numero,suma =0;
	do{
		cout<<"Ingrese un numero: ";cin>>numero;
		if(numero>0){
			suma +=numero;
		}
	}while(((numero<20)||(numero>30))&&(numero!=0));
	
	cout<<"La suma total de los numero es de : "<<suma;
	
	
	
	return 0;
}

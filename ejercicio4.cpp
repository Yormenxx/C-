#include<iostream>

using namespace std;

int main(){
	
	int numero;
	cout<<"Ingresa un numero entero del 1 al 10; ";cin>>numero;
	
	if(numero<1 || numero>10){
		cout<<"El numero no es valido";
	}else{
		for(int i = 1; i<=10; i++){
			cout<<"El resultado de la multiplicacion es: "<<numero*i<<endl;
		}
	}
	
	return 0;
}

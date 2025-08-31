#include<iostream>

using namespace std;

int main(){
	
	int prod;
	cout<<"Ingresa el precio del producto: ";
	cin>>prod;
	
	double iva = prod*0.19;
	double total = iva+prod;
	
	cout<<"\nEl precio total a pagar es: "<<total;
	
	
	
	
	return 0;
}

#include<iostream>

using namespace std; 

int main(){
	
	cout<<"Ordenamiento por el metodo de insercion "<<endl;
	
	int numeros[] ={4,1,2,3,5};
	
	int pos,aux;
	
	for(int i = 0; i<5; i++){
		pos=i;
		aux=numeros[i];
		while((pos>0) && (numeros[pos-1]>aux)){
			numeros[pos]=numeros[pos-1];
			pos--; 
		}
		numeros[pos]=aux;
	}
	
	cout<<"Numeros ordenados: "<<endl;
	
	for(int i =0; i<5;i++){
		cout<<numeros[i];
	}
	
	
	
	
	
	
	
	return 0;
}



#include<iostream>

using namespace std;


int main(){
	
	cout<<"Usando el metodo de burbuja"<<endl;
	
	int numeros[] = {6,1,2,3,4,5};
	
	int aux;
	
	
	
	for(int i = 0; i<6;i++){
		for(int j = 0; j<6; j++){
			if(numeros[j] > numeros[j+1]){
				aux=numeros[j];
				numeros[j]=numeros[j+1];
				numeros[j+1]=aux;
			}
		}
	}
	cout<<"Numeros ordenados"<<endl;
	for(int k = 0; k<6; k++){
		cout<<numeros[k];
	}
	
	
	
	return 0;
}

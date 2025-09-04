#include<iostream>

using namespace std; 

int main(){
	
	 cout<<"Ordenamiento por seleccion";
	 
	 int numeros[] = {3,2,1,5,4};
	 
	 for(int i=0;i<5;i++){
	 	int min = i;
	 	for(int j = i+1; j<5;j++){
	 		if(numeros[j]<numeros[min]){
	 			min = j;
	 		}
	 	}
	 	int aux = numeros[i];
	 	numeros[i] = numeros[min];
	 	numeros[min]=aux;
	 }
	 
	 cout<<"Ordenando los numeros"<<endl;
	 for(int i = 0; i<5;i++){
	 	cout<<numeros[i];
	 }
 
	return 0;
}


#include <iostream>
#include<conio.h>
using namespace std;

int main(){
	
	int numeros[3][3];
	
	for(int i = 0; i<3; i++){
		for(int j = 0; j<3; j++){
			cout<<"Ingrese un numero: ["<<i<<"]["<<j<<"] : ";
			cin>>numeros[i][j];
		}
	}
	
	cout<<"Matriz original"<<"\n";
	for(int i = 0; i<3;i++){
		for(int j = 0; j<3;j++){
			cout<<numeros[i][j]<<" ";
		}
		cout<<endl;
	}
	
	cout<<"Matriz transpuesta"<<"\n";
	for(int i = 0; i<3;i++){
		for(int j = 0; j<3;j++){
			cout<<numeros[j][i]<<" ";
		}
		cout<<endl;
	}
	
	
	getch();
	return 0 ; 
}

#include<iostream>
#include<conio.h>

using namespace std; 

struct Persona{
	char nombre[20];
	int edad;
}persona1;
//persona1 = {"Juan",22}
//persona2 = {"Ana",30};


int main(){
	

	cout<<"Nombre: ";
	cin>>persona1.nombre;
	cout<<"Edad : ";
	cin>>persona1.edad;
	
	cout<<"Nombre1 : "<<persona1.nombre<<"\n";
	cout<<"Edad1 : "<<persona1.edad<<"\n";
	
	//cout<<"Nombre2 : "<<persona2.nombre<<"\n";
	//cout<<"Edad2 : "<<persona2.edad;
	
	
	
	getch();
	return 0;
}








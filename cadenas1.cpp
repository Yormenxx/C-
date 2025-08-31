#include <iostream>
#include<conio.h>
#include<string.h>



using namespace std;

int main(){
	
	
	char palabra[]="Hola";
	int longitud = 0;
	
	longitud = strlen(palabra);
	cout<<"Numero de elementos de la cadena: "<<longitud;  
	
	//copiar cadena
	
	
	
	char nombre[]="Alejandro";
	char nombre2[20];
	
	strcpy(nombre2,nombre);
	
	cout<<nombre2<<endl; 
	
	//comparar cadenas
	
	char palabra1[] = "hola";
	char palabra2[] ="hola";
	if(strcmp(palabra1,palabra2)==0){
		cout<<"\nAmbas palabras son iguales";
	}
	
	//concatenar cadenas
	
	char cad1[]="Esto es una cadena";
	char cad2[]=" de ejemplo";
	char cad3[30];
	
	strcpy(cad3,cad1);
	strcat(cad3,cad2);
	
	cout<<"\n"<<cad3<<endl;	
	
	//invertir cadena
	char cadenaNombre[]="Juan";
	strrev(cadenaNombre);
	cout<<"\n"<<cadenaNombre<<endl;
	
	//pasar cadena a mayusculas
	
	strupr(cadenaNombre);
	cout<<"\n"<<cadenaNombre<<endl;
	
	//pasar cadena a minuscula
	
	strlwr(cadenaNombre);
	cout<<"\n"<<cadenaNombre<<endl;
	
	
	getch();
	return 0;
}



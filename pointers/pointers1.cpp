#include<iostream>

using namespace std;

//Un puntero no es más que una variable que almacena una direccion de memoria
// con el ampersand antes de la variable identificamos el espacio en memoria de una variable

int main(){
	
	int n = 5;
	
	cout<< &n <<endl;
//puntero : tipo* nombre
	int * ptr = &n;
	cout<<"Value of my pointer: "<<ptr<<endl;
//Para acceder al valor de mi direccion, se hace con el operador de desreferencia
	cout<<"Value of my pointer adress: "<<*ptr<<endl;
//para cambiar el valor de la direccion	
	*ptr= 10;
	cout<<"Value of my pointer adress: "<<*ptr<<endl;
	
	int v;
	int* ptr2 =& v;
	*ptr2=7;
	
	return 0;
}





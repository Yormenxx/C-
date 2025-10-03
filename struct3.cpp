#include<iostream>
#include<conio.h>
using namespace std;

struct info_direccion{
	char direccion[30];
	char ciudad[30];
	char barrio[20];
};

struct empleado{
	char nombre[20];
	struct info_direccion dir_empleado;
	double salario;
}empleados[2];


int main(){
	
	
	for(int i = 0; i<2;i++){
		fflush(stdin);//vacia el buffer y permite rellenar valores
		cout<<"Digite su nombre: "<<"\n";
		cin>>empleados[i].nombre;
		cout<<"Digite su direccion: ";
		cin>>empleados[i].dir_empleado.direccion;
		cout<<"Digite su Ciudad: ";
		cin>>empleados[i].dir_empleado.ciudad;
		cout<<"Digite su barrio: ";
		cin>>empleados[i].dir_empleado.barrio;
		cout<<"Salario : ";
		cin>>empleados[i].salario;
	}
	
	for(int i = 0; i <2; i++){
		cout<<"Nombre: "<<empleados[i].nombre<<endl;
		cout<<"Direccion"<<empleados[i].dir_empleado.direccion<<endl;
		cout<<"Ciudad"<<empleados[i].dir_empleado.ciudad<<endl;
		cout<<"Barrio"<<empleados[i].dir_empleado.barrio<<endl;
		cout<<"Salario"<<empleados[i].salario<<endl;
	}
	
	
	
	
	getch();
	
	return 0;
	
}










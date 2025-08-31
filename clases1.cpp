#include <iostream>
#include<stdlib.h>
using namespace std;

class Persona{
	
	private:
		string nombre;
		int edad;
	
	public:
		Persona(string,int);
		void leer();
		void correr();
			
};
//constructor

Persona::Persona(string _nombre, int _edad){
	nombre=_nombre;
	edad = _edad;
	
}

void Persona::leer(){
	cout<<"Mi nombre es: "<<nombre<<endl;
}

void Persona::correr(){
	cout<<"Estoy corriendo"<<endl;
}

int main(){
	
	Persona p1 = Persona("Juan",20);
	p1.leer();
	
	
	system("pause");
	return 0;
}

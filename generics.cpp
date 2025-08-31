
#include<iostream>
#include<string>
using namespace std;

template<typename T>

void Swap(T& a, T& b){
	T temp = a;
	a = b;
	b = temp;
}


int main(){
	
	int x = 10, y =20;
	cout<<"Antes del intercambio x = "<< x << ", y = " << y <<endl;
	Swap(x,y);
	cout<<"Despues del intercambio x = "<< x << ", y = " << y <<endl;

	string s1 = "hola";
	string s2="mundo";
	cout<<"\nAntes del intercambio s1 = "<< s1 << ", s2 = " << s2 <<endl;
	Swap(s1,s2);
	cout<<"Despues del intercambio s1= "<< s1 << ", s2 = " << s2 <<endl;
	return 0;
}





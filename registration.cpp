#include<iostream>
#include<fstream>
#include <string>
using namespace std;


class temp{
	string userName,Email,password;
	fstream file;
	
	void login();
	void signUp();
	void forgot();

};


void temp::signUp(){
	cout<<"\n----------SIGNUP---------\n";
	cout<<"\nEnter your name :";
	getline(cin,userName);
	cout<<"Enter your email address : ";
	getline(cin,Email);
	cout<<"Enter your password";
	getline(cin,password);
	
	file.open(loginData.txt, ios::app);
	file<<userName<<"*"<<Email<<"*"<<password<<endl;
	file.close();
}

void temp::login(){
	cout<<"\n----------LOGIN---------\n";
	cout<<"Enter your user name: "<<endl;
	getline(cin,searchName);
	cout<<"Enter your password : "<<endl;
	getline(cin,searchPass);
	
	file.open("loginData.txt",ios :: in);
    getline(file,userName,'*');
    getline(file,email,'*');
    getline(file,password,'\n');
}

void temp :: forgot(){
    cout<<"\nEnter Your UserName :: ";
    getline(cin,searchName);
    cout<<"\nEnter Your Email Address :: ";
    getline(cin,searchEmail);

    file.open("loginData.txt",ios :: in);
    getline(file,userName,'*');
    getline(file,email,'*');
    getline(file,password,'\n');
    while(!file.eof()){
        if(userName == searchName){
            if(Email == searchEmail){
                cout<<"\nAccount Found...!"<<endl;
                cout<<"Your Password :: "<<password<<endl;
            }else{
                cout<<"Not found...!\n";
            }
        }else{
            cout<<"\nNot fount...!\n";
        }
    getline(file,userName,'*');
    getline(file,email,'*');
    getline(file,password,'\n');
    }
    file.close();
}

int main(){
	
	char choice;
	cout<<"\n1. Login";
	cout<<"\n2. Sign up";
	cout<<"\n3. Forgot password";
	cout<<"\n4. Exit";
	cout<<"\nEnter your choice";
	cin>>choice;
	
	  switch(choice){
        case '1':
            cin.ignore();
            obj.login();
        break;
        case '2':
            cin.ignore();
            obj.signUP();
        break;
        case '3':
            cin.ignore();
            obj.forgot();
        break;
        case '4':
            return 0;
        break;
        defualt:
            cout<<"Invalid Selection...!";
    }
	
	
}



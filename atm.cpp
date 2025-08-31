#include<iostream>
#include<stdlib.h>
using namespace std;

void showMenu(){
	cout<<"*************MENU***************"<<endl;
	cout<<" 0.Exit"<<endl;
	cout<<" 1.Check balance"<<endl;
	cout<<" 2.Deposit"<<endl;
	cout<<" 3.Withdraw"<<endl;
	cout<<"****************************"<<endl;
}




int main(){
	
	int option;
	double balance = 1000;
	
	do{
		showMenu();
	
		cout<<"Option: ";
		cin>>option;
		
		system("cls");
	
		switch(option){
		
		case 1 : cout<<"Balance is: "<< balance << endl; break;
		
		case 2: cout<<"Deposit amount: ";
			double depositAmount;
			cin>>depositAmount;
			balance+=depositAmount;
			break;
			
		case 3: cout<<"Withdraw amount: ";
			double withdrawAmount;
			cin>>withdrawAmount;
			if(withdrawAmount<=balance){
				balance-=withdrawAmount;
			}else{
				cout<<"Not enough money \n";
			}
			break;
		}
		
	}while(option!=0);
	

	
	
	
	
	return 0;
}















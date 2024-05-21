using namespace std;
#include<iostream>


int main() {
	
	const string password= "hello";
	
	
	string input;
	
	do {
		cout << "enter your password >" << flush;
		cin >> input;
		
		if (input!=password){
			cout<< "access denied." << endl;
		}
		
	} while (input!=password);
	
	cout << "password accepted" << endl;
	
	return 0;
}

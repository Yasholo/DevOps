#include <iostream>
using namespace std;

int main() {
	
	string password = "hello" ;
	cout << "enter your password: " << flush;
	
	string input;
	cin >> input;
	
	if(input == password ) {
		
		cout << "password accepted!" << endl;
		
	}
	
	if(input != password) {
		cout << "access denied :(" << endl;
	}
	
	return 0;
}

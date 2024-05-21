#include <iostream>
using namespace std;

int main() {
	
	/* break.....
	
	for(int i=0; i<5; i++) {
		
		cout << "i is: "<< i << endl;
		
		if (i==3) {
			break;
		}
		cout << "looping..." << endl;
	}
	*/
	
	/* continue....
	
		for(int i=0; i<5; i++) {
		
		cout << "i is: "<< i << endl;
		
		if (i==3) {
			continue;
		}
		cout << "looping..." << endl;
	}
	*/
	
	const string password= "hello";
	
	string input;
	
	do {
		cout << "enter your password >" << flush;
		cin >> input;
		
		if (input==password){
			break;
		}
		else {
			cout<< "access denied." << endl;
		}
		
	} while (1);
	
	cout << "password accepted" << endl;
	
	cout << "program quitting..." << endl;
	
	return 0;
}

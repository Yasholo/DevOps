#include <iostream>
using namespace std;

int main() {
	
	cout << "1. \tadd new record." << endl;
	cout << "2. \tdelete record." << endl;
	cout << "3. \tview record." << endl;
	cout << "4. \tsearch record." << endl;
	cout << "5. \tquit" << endl;
	
	cout << "enter your selection > " << flush;
	
	int value;
	cin >> value;
	
	if(value < 3 ) {
		cout << "insufficient privilages :( " << endl;
	}
	
	else {
		cout << "sufficient privilage level!" << endl;
	}
	
	if(value == 5 ) {
		cout << "quitting..." << endl;
	}
	
	else{
		cout << "not quitting..." << endl;
	}
	
	cout << "____________________________-" << endl <<endl;
	
	if(value==1) {
		cout << "adding new record..." << endl;
	}
	else if(value == 2){
		cout<< "deleting record..." << endl;
	}
	else if(value == 3){
		cout<< "viewing..." << endl;
	}
	else if(value == 4){
		cout<< "searching..." << endl;
	}
	else if(value == 2){
		cout<< "quiting..." << endl;
	}
	else{
		cout<< "invalid code" << endl;
	}
	
	return 0;
}

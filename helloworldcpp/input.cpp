#include <iostream>
using namespace std;

int main() {
	
	cout << "enter your name: " << flush;
	string name;
	cin >> name;
	cout << "enter your age: " << flush;
	string age;
	cin >> age;
	cout << "your name is: " << name << " and your age is: " << age << flush;
	return 0; 
}

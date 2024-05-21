#include <iostream>
using namespace std;
int main() {
	int numberofcats=5;
	int numberofdogs=7;
	int numberofanimals= numberofcats+numberofdogs;
	
	cout << "number of cats: " << numberofcats << endl;
	cout << "number of dogs: " << numberofdogs << endl;
	cout << "total number of animals: " << numberofanimals << endl;
	
	cout << "a new dog acquired!" << endl;
	
	cout << "number of dogs: " << numberofdogs+1 << endl;
	return 0;
	
}

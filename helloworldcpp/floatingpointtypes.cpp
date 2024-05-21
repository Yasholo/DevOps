#include <iostream>
#include <iomanip>
using namespace std;

int main() {
	 
	float fvalue=7.556;
	cout<< fvalue << endl;
	cout << "size of float: " << sizeof(float) << endl;
	double value=153.26546456 ;
	cout << setprecision(20) << value << endl;
	cout << " size of double: " << sizeof(value) << endl;
	return 0;
	
}

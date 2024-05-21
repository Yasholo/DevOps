#include <iostream>
using namespace std;

int main() {
	
	bool bvalue = true;
	cout << bvalue << endl;
	
	char cvalue = 'g';
	cout << cvalue << endl;
	
    cout << "size of char: " << sizeof(char) << endl;
    
    wchar_t wvalue = 'i';
    cout << char(wvalue) << endl;
	cout << "size of wchar: " << sizeof(wvalue) << endl;
	
	return 0;
}

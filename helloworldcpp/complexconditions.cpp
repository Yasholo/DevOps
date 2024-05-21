#include <iostream>
using namespace std;

/*
== equality test
!= not equals
< less than
> greater than
<= less than or equal to
>= greater than or equal to
*/

int main() {
	
	int value1 = 7;
	int value2 = 4;
	
	if (value1 <= 8) {
		cout << "condition 1: true" << endl;
	}
	else {
		cout << "condition 1: false" << endl;
		
	}
	
	if (value1 ==7 && value2 < 3) {
		cout << "condition 2: true" << endl;
	}
	else {
		cout << "condition 2: false" << endl;
		
	}
	
	if (value1==7 || value2 < 3) {
		cout << "condition 3: true" << endl;
	}
	else {
		cout << "condition 3: false" << endl;
		
	}
	
	if (value2 != 8 && value1 == 1 || value1<10) {
		cout << "condition 4: true" << endl;
	}
	else {
		cout << "condition 4: false" << endl;
		
	}
	
	bool condition1 = (value2 != 8 && value1 == 1 || value1<10) ;;
	cout << condition1 << endl;
}

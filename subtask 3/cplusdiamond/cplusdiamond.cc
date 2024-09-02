#include <iostream>
using namespace std;

int main() {
    int n, i, j;

    cout << "Enter the number of rows (for the upper half of the diamond): ";
    cin >> n;

    // Upper half of the diamond
    for (i = 1; i <= n; i++) {
        for (j = i; j < n; j++) {
            cout << " ";
        }
        for (j = 1; j <= (2*i - 1); j++) {
            cout << "*";
        }
        cout << endl;
    }

    // Lower half of the diamond
    for (i = n-1; i >= 1; i--) {
        for (j = n; j > i; j--) {
            cout << " ";
        }
        for (j = 1; j <= (2*i - 1); j++) {
            cout << "*";
        }
        cout << endl;
    }

    return 0;
}


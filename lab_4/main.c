#include <stdio.h>
#include "sort.h"

int main() {
    int k = 1;
    /* 1  5  6  9  15 */
    int array[] = {15, 6, 9, 1, 5};
    int size = sizeof(array) / sizeof(int);
    for (int i = 0; i < size; i++) {
        printf("%u ", array[i]);
    }
    printf("\n");
    sort(array, size, k);
    for (int i = 0; i < size; i++) {
        printf("%u ", array[i]);
    }
    printf("\n%u", sort(array, size, k));
    return 0;
}

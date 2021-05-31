# 1 "sort.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "sort.c"
# 1 "sort.h" 1



int sort(int array[], int size, int k);
# 2 "sort.c" 2

int sort(int array[], int size, int k) {
    int temp;
    int j;
    for (int i = 1; i < size; i++) {
        temp = array[i];
        j = i - 1;
        while (j >= 0 && array[j] > temp) {
            array[j + 1] = array[j];
            j = j - 1;
        }
        array[j + 1] = temp;
    }
    return array[k-1];
}

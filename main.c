#include <stdio.h>
#include <string.h>

#include "input.h"
#include "output.h"

#include "mylibs/process.h"
#include "usr/lib/process1.h"

#define SIZE 100

int main() {
    char text[SIZE];

    get_input(text, SIZE);

    char text1[SIZE];
    strcpy(text1, text);

    process_data(text);
    print_output(text);

    process1_data(text1);
    print_output(text1);

    return 0;
}

#include <stdio.h>
#include "input.h"
#include "output.h"

#include "mylibs/process.h"
// #include "usr/lib/process1.h"

#define SIZE 100

int main() {
    char text[SIZE];

    get_input(text, SIZE);
    process_data(text);
    print_output(text);

    return 0;
}

#include <stdio.h>
#include "input.h"

void get_input(char *text, int size) {
    printf("Введіть текст: ");
    fgets(text, size, stdin);
}

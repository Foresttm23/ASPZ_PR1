#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "process1.h"

void process1_data(char* text) {
    char* temp = "\nusr/lib\n";

    strcat(text, temp);
}

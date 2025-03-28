Завдання до 3 варіанту:
1. Написати команду компіляції з використанням gcc.
2. Змінити команду, щоб програма використовувала process1 із /usr/lib.
3. Змінити команду, щоб програма використовувала process із домашнього каталогу.
4. Додати прапорці для генерації налагоджувальної інформації (-g) і перевірки продуктивності (-O2).
5. Створити статичну (.a) і динамічну (.so) версії бібліотек process1 і process та перевірити різницю у виконанні.
6. gcc -c input.c output.c
7. gcc main.c input.o output.o -L/usr/lib -lprocess1 -L~/mylibs -lprocess -o my_program
8. Використовуйте Makefile для автоматизації процесу компіляції.
9. Додайте до Makefile ціль clean, яка видаляє .o файли та виконуваний файл.
10. Напишіть CMakeLists.txt для збирання програми за допомогою CMake.

**Завдання було виконанно, а результати сфотографовано та записано у папці Photos.** 
Деякі завдання було об'єднано для зручності

#include <stdio.h>
#include <ctype.h>

/*Playing with C functions*/

// pointer to char, just using multiple chars
char *module = "functions";

// normal char
char myletter = 'J';

// normal integers
int foo = 10;
int bar = 5;

int answer_to_everything() {
    return 42;
}

char returning_the_letter(char letter) {
    return letter;
}

void return_nothing(char thestring[]) {
    printf("I return NOTHING, %s!\n", thestring);
}

int main(int argc, char *argv[])
{
    // creating pointers from integers
    int *foo_ptr = &foo;
    int bar_noptr = bar;
    
    // creating pointers from char & pointer to char
    char **module_ptr = module;
    char module_noptr = *module;

    printf("starting with %s!\n", module);
    printf("answer to everything: %d\n", answer_to_everything());
    printf("i want my letter `%c`\n", returning_the_letter(myletter));
    //printf("Module pointer %s", module_ptr);
    //printf("Module no pointer %d", module_noptr);
    return_nothing("my watermelon");
    printf("Memory address of original foo: %p\n", (void*)&foo);
    printf("Memory address of pointer foo: %p\n", (void*)&foo_ptr);
    printf("Memory address of original bar: %p\n", (void*)&bar);
    printf("Memory address of non pointer bar: %p\n", (void*)&bar_noptr);

    return 0;
}

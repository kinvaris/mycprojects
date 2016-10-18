#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>

struct Person {
    char* name;
    int age;
    int height;
    int weight;
};

struct Person *Person_create(char* name, int age, int height, int weight)
{
    struct Person *who = malloc(sizeof(struct Person));
    assert(who != NULL);

    who->name = strdup(name);
    who->age = age;
    who->height = height;
    who->weight = weight;

    return who;
}

void Person_destroy(struct Person *who)
{
    assert(who != NULL);

    free(who->name);
    free(who);
}

void Person_print(struct Person *who)
{
    printf("Name: %s\n", who->name);
}

int main(int argc, char *argv[])
{
    printf("testing\n");
    struct Person *jonas = Person_create("Jonas Libbrecht", 22, 180, 79);

    printf("Jonas is at memory location %p:\n", jonas);
    Person_print(jonas);
    printf("Destroying object jonas...\n");
    Person_destroy(jonas);
    printf("Jonas is at memory location %p:\n", jonas);
    Person_print(jonas);    
    // will fail
    Person_destroy(jonas);

    return 0;
}

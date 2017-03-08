#include <iostream>
#include "src/Person.h"

using namespace std;

int main() {
    Person p(1, "Jonas Libbrecht");
    std::cout << "Hello, World!" << std::endl;
    std::cout << p.toString() << std::endl;
    std::cout << p.myId() << std::endl;
    return 0;
}
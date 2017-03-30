#include <string>
#include <random>
#include <iostream>
#include <algorithm>
#include "src/Person.h"

using namespace std;

void choose_pokemon(string foo) {
    std::cout << "You chose Pokemon: " << foo << std::endl;
}

int main() {
    Person p(1, "Jonas Libbrecht");
    std::cout << "Hello, World!" << std::endl;
    std::cout << p.toString() << std::endl;
    std::cout << p.myId() << std::endl;

    if(p.myId() == 1) {
        std::cout << "My name is Jonas Libbrecht" << std::endl;
    } else {
        std::cout << "My name is Albert ;-), just kidding it's Jonas Libbrecht" << std::endl;
    }

    std::cout << "Convert Celcius to Faren." << std::endl;
    double i, faren=0;

    for (i=0;i<=100;i++) {
        faren = i*9/5+32;
        std::cout << "Celcius: " << i << "; Faren: " << faren << std::endl;
    }

    std::cout << "Bim Bam Bom" << std::endl;
    string choice = "Bim";
    std::transform(choice.begin(), choice.end(), choice.begin(), ::tolower); // to lower case

    std::cout << "Your choice was: " << choice << std::endl;

    int min = 1;
    int max = 10;

    std::random_device seeder;
    std::mt19937 engine(seeder());
    std::uniform_int_distribution<int> dist(min, max);

    int numeric_choice = dist(engine);

    switch (numeric_choice) {
        case 1: {
            std::cout << "You chose 1" << std::endl;
            break;
        }
        case 2: {
            std::cout << "You chose 2" << std::endl;
            break;
        }
        case 3: {
            std::cout << "You chose 3" << std::endl;
            break;
        }
        default: {
            std::cout << "This number is outside my reach: " << numeric_choice << std::endl;
            break;
        }
    }

    choose_pokemon("Pikachu");

    return 0;
}
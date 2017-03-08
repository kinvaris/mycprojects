//
// Created by jonas on 3/8/17.
//

#ifndef EMPLOYEE_MANAGEMENT_PERSON_H
#define EMPLOYEE_MANAGEMENT_PERSON_H

#endif //EMPLOYEE_MANAGEMENT_PERSON_H

#include <string>

using namespace std;

class Person
{
private:
    int id;
    string name;

public:
    Person(int myId, string myName);
    string toString();
    int myId();
};
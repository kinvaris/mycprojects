//
// Created by jonas on 3/8/17.
//

#include "Person.h"

using namespace std;

Person::Person(int myId, string myName)
{
    id = myId;
    name = myName;
}

string Person::toString()
{
    return "Name: " + name + ", ID: " + std::to_string(id);
}

int Person::myId()
{
    return id;
}
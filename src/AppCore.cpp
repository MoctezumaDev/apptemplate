#include <iostream>

#include "AppCore.h"

AppCore::AppCore()
{
}

AppCore::~AppCore()
{
}

void AppCore::run( ) const
{
    std::cout << "Hello world!\n";
}

int AppCore::sum( int a, int b ) const
{
    return a + b;
}

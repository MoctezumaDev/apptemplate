/**
\file
Declares the sample Foo class.
*/

#ifndef APP_CORE_H
#define APP_CORE_H

/**
A sample class.
*/
class AppCore
{
public:

    AppCore();
    virtual ~AppCore();

    /**
    Says hello world.
    */
    void run( ) const;

    /**
    Adds two numbers.
    */
    int sum( int a, int b ) const;

}; // class Foo

#endif

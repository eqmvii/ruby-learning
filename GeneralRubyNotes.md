# IDE options

RubyMine is good and uses rails

# I/O

* gets waits for keyboard input
* puts prints strings
* print is another way to print info

# General notes

* Underscore can return last evaluated something or another
* Everything has classes and super classes. You can use .public_methods to see public methods. You can chain .class and .superclass.
* nil is not a primative, it's a special object. .nil? will check to see if an object is nil. The question mark is part of the method name in this case.
* ! is another common method end. ? is t/f test, ! is for unexpected or dangerous methods.
* variables_are_snake_case doNotUseCamelCase

# syntax

* two spaces is the convention for indenting
* no semicolons. If you NEED to do statements on a single line, semicolons can be used. Really might only see it in IRB.
* def is used for methods. end ends a method definition. The final line of a method is the automagic return item.
* return can still be used for flow control at earlier points if desired.
* Calling a method: brackets around arguments are option, but are typically used if there's an argument list and ommited if not. Ex: double(12) vs. double 12

# Scope

* methods provide scope, and create local variables as expected.
* Can create global variables by using a dollar sign. Hopefully you won't have much need for it - global state is typically seen as a bad idea.
* variables in inner scope shadow variables previously defined in outer scope.

# Control structures

* if else is familiar looking.
* Twist: Ruby treats statements as expressions as much as possible. That means you can use if/else conditiona logic as sort of return values. Cool!
* This also means you can chain assignemnts. a = b = 10; the asignment expression yields the value that was assigned.

# operators

* >, >=, <, <=, ==, !=  and others.
* +, -, *, /, %, **
* !, &&, ||, not, and, or.  Difference? Second group is precedence - and and or are equal. Normally used for flow control outside of if/else style structures.
* &, |, ^, ~, <<, >> for bitwise operations
* +=, -=, *=, /=, %=, &=, |=, ^=, >>= assignment operators. A += 10 is short for a = a + 10.
* Can check for object equality.

# comments.

* anything following the pound sign is a comment and continues until the end of the line.

# strings

* .strip gets rid of white space. Note that it returns a new string rather than modifying in place. Good example of ! - you can use that to modify in place.

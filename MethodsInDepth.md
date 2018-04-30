# Methods in depth

Default parameters, variable numbers of arugments, keyword arguments, method aliasing, operators, method calls as messages, and method_missing

# Default parameter values:

can't have same name and different parameter lists.

def produce_spaceship(type = :freighter, size = :x1)
    #
end

Default parameters can even have conditional logic, and are calculated when called not when defined.

Can be in basically any order, ruby figures out when optional variables were omitted. Don't intermingle though, you want them up front or at the end.

# Variable Length Parameter Lists

Splat operator!

def produce_fleet(days_to_complete, *types)
end

Again the splat gobbles stuff up. Works in the same way as a list of variables in a parallel assignment circumstance.

When calling such a method, you can't ommit the first item.

splat operator when calling turns an array into a list of arguments.

# keyword arguments

You can call with argument name, colon, and then value. Definition looks similar and are required to have defaut values. Weird.

Since name is required, order doesn't need to matter. Can come after regular parameters if so desired.

# method aliasing

override a superclass method but get the old one.
alias_method lets you copy a method with a new name. Takes symbol or string. Lets you override without it getting too crazy.

# Operators

Ruby allows operators to be defined or redefined within a class. Most operators are in fact methods with some syntactic sugar.

I honestly hope nobody ever does this because hoo boy code readability.

# Spaceship operator <=>

Makes objects sortable by rturning -1/0/1 as appropriate when appropriate

# Knowing where to look

Things will be somewhat less mysterious for having watched and thought about all of this. I hope.


"It's easy to get carried away and get too clever with operator overloading at the expense of clarifty. Custom operators can look quite cryptic to somebody who isn't familiar, and behave contrary to expectations, etc."

Advice: Only use it to make code more readable.

# Methods are called by sending a message to an object. It's a message handler.

Object that gets a message is a reciever. Object class has a .send

# .send

You can send the message as a symbol to an object. Can be convenient!

ship.send(symbol producing code). Neat!

Alias: __send__ is an alias for send, since it often accidentally gets overwritten.

Methods outside classes: can be called w/o a receiver. Typically is called on self, the implicit receiver. True when defined outside of a class too.

# main

main is the default object, and outside of other contexts, that's what self refers to.

kernel is where basic methods, like puts, are stored.

# method_missing

you get a NoMethodError if a method isn't there, but more happens. Ruby goes all the way up and then invokes method_missing.

method_missing can be overridden. Woah!

Woah woah! This seems like how ActiveRecord does things. That's neat!

Can cause performance issues.

respond_to? is an interesting case, and can't see method_missing issues.

Override both? Maybe!

const_missing is a method_missing counterparty

Can add/remove methods at runtime with hooks, like inherited (called any time a subclass of your class is created)




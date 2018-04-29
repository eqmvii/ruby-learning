# Blocks

Code written between do/end or curly braces.

Do end for multi line, curly for passing to method.

Some methods expect blocks as a special argument after the rest of the method.

Block arugments go in vertical bars.

How to write a method that cna take a block?

# yield

yield will execute the block at some point.

yield is similar to a method call, it returns the last expression in the block.

block arguments can have default values, etc.

# scope subtlety:

block arguments shadow outer scope. Defining from the outer scope won't shadow, you'll actually overwrite. Uh oh!

Solution: block local variables solve this. List anything to be local after a seimcolon in the argument list.

Also, blocks are more-or-less closures, i.e. they carry their contexts with them. Self, etc.

convenient: no need to pass everything in as arguments

return statements are scope of definition though. That scope might not exist? Can get weird.

limitations: one block per method, can't pass to a sub-method, and typically isn't DRY. If only blocks were objects...

# proc

blocks can be named! & before the name means it's the name of a block. Can check for type, and... it's a proc! A block isn't actually a proc, but it's converted to one by prefacing the name with an ambersand.

Can also create proc objects via Proc.new or the kernel method proc.

Now you can pass them around and refer to them as methods, implement callbacks, etc.

# lambda

You can also create a lambda object, with an arrow.

proc vs. lambda vs. block

procs are named and referentiable.
lambdas are more like anonymous methods, strict about arguments, and return/break behave somewhat differently though next is the same (returns control back to the caller)

lambda w/ too many or too few arguments is an exception.  Procs and blocs are more relaxed.

All kinds of crazy stuff idk

arity method figures out the number of arguments expected.

Symbol to proc conversion is also a thing. Looks for a to_proc method if it's ampersanded.

# Constants

Not entirely replaced by symbols!

Like a variable in that it refers to an object.

MAX_SPEED = 1000 is typical.

Class names are constants, and thus why they start with cap letters.

Not strictly enforced. So.

freeze method can halt modification, but that's relatively rare.

> There is no way to unfreeze a frozen object.

You can still modify internal items in a frozen object. Like upcasing a string in a frozen array.

:: can get into other classes

A::MAX_SPEED = 100 woah

Can't define constants inside of methods

# modules

One key difference from classes: instantiation

module SpaceStuff
end

(1) Namespacing is one purpose

self. for various things
classes can be inside of modules
modules can next like anything else

(2) To mix into classes, adding functionality, as mixins

enumerable module is an example
a class can include multiple modules
this is Ruby's alternative to multiple inheritance
largely the same as modules we have seen before, but they often contain instance methods.

include mixin module into class, or "mixed it in" in ruby terminology, making its methods available.

Modules are slotted into an inheritance heirarchy. Modules are the most immediate ancestors of a class. Looks in methods then further up.

Version included last wins if there are multiple.

Module inclusions are inherited with the rest of superclass functionality.

include, extend, etc. included hook method is another way to work with things.


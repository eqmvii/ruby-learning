# Standard Types

# Booleans

* Singleton objects, not actually a type.
* true class and false class inherit from object

# Numbers

* integer numbers: fixnum and bignum, both of which inherit from integer class.
* Bignum is for larger than fixnum, and conversion happens behind the scenes and automatically.
* Literals can start with 0x for octal, etc.
* underscores can separate digits for you. and be ignored, i.e. 1_000_000

* floating points: require decimals before and after.
* Mixing floats with intefers? Ruby returns a float.

# Strings

Around 100 methods and many ways to write string literals.

[grab notes from other place]

# String Operators and Methods

# Symbols

* Used to add accessor to methods, to make things ,private, etc.
* What are they? Special objects that are a mix between a constant and a string.
* Member of class symbol, that can only be created by literal.
* :"abc" and can include interpolation.
* Ensures that symbols are unique and immutable.
* References to the same symbol go back to the original unique one.
* Great substitute for strings when strings are used as labels. Better option because you don't need to create new objects each time, and comparison is simple.
* They also work great as hash keys, function parameters where there are discrete values, etc.). Also popular in elixir!
* Can easily convert to/from string. to_s is to string, and to_sym is to sym.

# Arrays

Array literals are in square brackets. Arrays can contain anything.
arr = Array.new(3) for an array of three nils. Default value can be second argument. Careful! Each element points to the same object. Never do this. Block case works for new ones: Array.new(3) { "abc" } => much better.Can also create multidimensional arrays more simply.
%w(array of words) can break strins down into an array. Capital W allows you to get into more complex stuff, like string interpolation.

Array methods: size, empty?, first, last, 0-based index in square brackets, -1 index for reverse order.

Slicing is done with square brackets arr[1..3] returns a slice from index 1 to 3. Reverse index works here too.

You can append elements with <<. The array gorws and shrinks as necessary.
+ operator can join two arrays. Even some crazy multiplication and stuff. Minus operator allows deletion of elements by value.

# Enumerable

Modules are a way of packaging methods and constants. Array has enumerable.

What does it provide? Close to 50 methods, which turns ruby collections into power tools.
Map: apply something to each element of the collection.
[1, 2, 3].map { |v| v * 10 } => [ 10, 20, 30 ]
[1, 2, 3].reduce { |sum, v| sum + v } => 6
sort, select (like a filter), etc. Key to functional programming.

# Hashes

An ordered collection of key-value pairs. JavaScript objects. Keys must be unique. A hash literal is marked by curly braces. Commas separate each pair and arrows point from keys to values.
h = { "min" => 0, "max" => 100 }
Symbols are commonly used as hash keys, and so there's a special shorthand:
h = {min: 0, max: 100}
Default to nil if looking for something that's not there, but you can weirdly have alternative default values, you know, just in cas that's what you need.
each can be used to iterate over an object. k, v can do each.

Hashes /are/ ordered, keeps order based on how added. Enumerable module is there and works and can do the enumeration you might expect of such a module.

# Ranges

Ranges are created by lierals like this: 1..5 or 1...5. Two dots is inclusive, 3 dots is exclusive with an excluded upper boundary.
To call methods, you have to enclose in pranthesis. Has begin and end to get boundaries. Also has include to test for inclusion within hte range.
map array-ifies and then goes back over it.
ranges of string values works too, probably with weird results.
Float ranges aren't iteratable? So what are they?
Ranges can be used in a case state, with a custom === to check for being contained within. That's one reason why having floats there can make sense.

# Parallel Assignment and splat

related to standard collection types.

Parallel assignment allows multiple assignments in one statement.
a,b = 1,2
If right side is comma separated, it is turned into an array then assigned to the left.
Right side can even just be an actual array.

underscore: the dummy variables of our hearts. It's mostly a normal variable, except it's treated in a slightly special way. Underscores or anything STARTING with an underscore suppresses unused variable warnings.

Splat operator: *

A value on the left will then accumulate.

a, b = [1, 2, 3, 4] => b is 2
a, *b = [1, 2, 3, 4] => b is [2, 3, 4] due to hoovering up remaining values
a, *b, c = [1,2,3,4] => b is [2, 3] due to greedy-ness

Splat does all kinds of crazy things.

# Summary

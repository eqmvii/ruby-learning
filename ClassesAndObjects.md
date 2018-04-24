# Classes etc

* Class names are upper case then CamelCase with cap'd abbreviations
* use .new to instantiate
* class ClassName end to do a thing
* .new reads and executes the class blueprint

* instance variavles: denoted with an @ sign at the beginning of the method. Won't exist until the method is called.
*  the .inspect method shows info
*  instance variables are not visible outside of the class

* attr_accessor adds read/write access to instance variables
* attr_reader and writer exist as smaller portions. Can add lots to it.

* super can be used to call the entire ancestral method
* inheritance is for reusing functionality, NOT FOR ENFORCING INTERFACES
* duck typing: allows you to call a method on a class and you just assume the class has such a method even if it's different

* class method: called on a class instead of an object. Example is new, which is used to instantiate
    * usefuk when state is irrelevant.
    * example: def self.thruster_count
    * a class method helps make it clear that this bit of functionality is not dependant on object state.
    * self keyword is more than just a signpost: its meaning comes up Later(TM)
    * Spaceship.thruster_count then works. Error if called on an instantiated version of the object
* Class variables: double @@ signs. One copy of it per class shared between all objects of the class, defined in the body of a class. Not visible outside of the class. Accessor methods required.
    * Rarely used due to quirk: shared between all subclasses. Oops! Unexpected results and clobering.
* Class Instance variable: an instance variable inside of the class and then in a class method.
    * Thus they become variables on the class and not variables on the object
    * and so... it's just what you would want it to be!
    * yay!

* method visibility: private and protected
    * can add private :atom/symbol at the end if that becomes actually necessary
    * subclasses can touch private things
    * class methods have special privacy manner: private_class_method not just private
    * protected: allow access for others
    * prvate and protected not used much. Leave the programmer in charge.


# inheritance:

* objects can inheret from just one class, not from two
* object is the root and basic object is an explicit blank. You can even inherit from basic instead of regular if you're so incluned!
* Hierarchal traversion to find method with the name is how things work

# Objects etc.

* objects are by reference, so when modifying in place, it's going to be like JavaScript
* a = "abc"; b = a; a.upcase!; b and a are both upcase
* a.object_id will show uniqueness
* Objects are passed by reference in ruby
* clone method can create a copy of an object
* b = a.clone will copy an object. Note that it does NOT do deep copy, i.e. does not copy objects refered to within

# initialize:
* a magic and necessary initialization step for objects/classes
* Ruby has a garbage collector, which runs periodically and cleans up unreferenced objects
* class declaration code is executed. Results can be assigned. Executable class bodies and self mean all sorts of cool stuff happens.
* Think of classes as providing context for the execution of code.

* self: What's it all about, anyway
* self refers to the current execution contet, whatever it happens to be. Can be used at any point.
* Inside a class, refers to class. THat's why self prefixing turns a method into a class instead of a normal method.
* An object becomes self inside of itself

* Any method called w/o an explicit reference is called on self
* Open classes in ruby: you can have a class twice. The 2nd doesn't redfine, but rather re-opens to add a new method.
* Adds to existing objects as well

# monkey patching
* exploits open calsses. Adding or modifying functionality at run time.
* you can also overwrite existing methods. Over writes when trher'es a collision.
* Can even monkey patch the built in basic standard library

# Equality of classes & objects

* equal method is to see i they point to the same object
* a = b = 1
* a.equal?(b) => true
* b = 2
* a.equal?(b) => false
* equal looks for sameyness
* can override equal, but then you loose same-y-ness?
* a = "abc"; b = "abc"; a == b => true; a.equals?(b) => false
* def ==(other) allows comparison vs. another object

# Flow Control in Ruby

# if and else

* vanilla but it's cool that it returns and so can plug into an assignment
* message = if lander_cnt > 10 then "Launching" else "Waiting" end
* modifier version: no if, but happens after a short statement
    * launch if can_launch?
* elsif is one word
* Only two things evaluate to false: nil and literal false. No truthiness, no JavaScript hijynx.
* unless is the counterpart of if, if not and unless are the same
* Readability! unless fuel_level < 25 launch end.
* try not to use else with unless
* There is also a modifier version of less: do_thing unless other_thing_is_true
* Ternary: can_launch ? launch : wait

# conditional initialization

* ||= and &&=. Double pipe operator, ||=, is very common and often used.
* ship ||= Spaceship.new i.e. it will only make a new one if one doesn't already exist.
* More verbose: ship = Spaceship.new unless ship
* Idiom relies on two things:
    * First, it's better modeled as ship || ship = Spaceship.new. Butttt.... a || a = 10 doesn't work. Ex.: b = 20 if false creates b then make it nil.
    * Caveat: booleans don't work with conditional initialization
    * This idiom relies on nil being evaluated as false, so be careful here!

# and and or in flow control

* && higher than || ; and and or are under && and || ; and + or have the same.
* Adding assignments can get whacky
* Accepted practice: use double amp/pipe
* and/or are used for flow control. chain operations until one returns nil or false, due to short circuiting
    * lande = Lander.locate(lander_id) and lander.recall
* or can create fallbacks
    * engine.restart or enable_emergency_power


# case

* case is like switch.
    * case -> when
* like if, case can be used as an expression, causing a return value that can be used/tested/snarfled

* triple equals same as double by default
* else is the default in a case clause, extra handy when assigning via the return. With no matches nil would return, else allows the opportunity to provide a different/new value


# looping

* looping is limited. This is because both are better done with iterators.

* while high_alert? do sound_system.play_siren end (w/o the do to make it a multiline while)
* modifier form: sound.play while high_alert
* until for inversion, i.e.: until ship.at_cruising_velocit \n ship.accelerate \n end. Evaluated at the top. Can also be single line. Can modify.
* begin (code) end while high_alert is another way with a crucial difference. It executes at least once even if the condition is false at the start, like do/while in JS
* for loop is rarely used. Each is more commonly used.
    * for i in [3, 2, 1]
        * puts i
    * end
* syntactic sugar for each. i is a loop variable that takes values in a collection.
    * for i in (1..10)
        * puts i
    * end
* (1..10) is a range literal

* Each
* [1, 2, 3].each do
    * puts "text"
* end

* code blocks: code between do/end, and code between curly braces. Only way to use them are by passing them to methods.
* Blocks are typically special arguments that come after normal arguments. do/end for multiline and {} for single line, by convention.

* use numbers to help with explicit iteration:
* 10.upto(20) { |i| puts i }
* 3.times { puts "text" }
* 1.step(10, 2) { |i| puts i } => 1, 3, 5, 7, 9 ; (100..200).step(10) { |i| puts i } => 100, 110 . . . 190, 200

* Loop Flow & Next
    * next transfers to the next loop iteration when it gets hit. ex.: next if message.type == "sync"
    * break ends and breaks out. Arguments can be passed to break and turn into the loop's return value
    * redo is special magic that starts the loop over without a re-evaluation, like a mini internal loop

# exceptions

* Raise and handle exceptions. That's the approach employed by the standard library methods.
* Options:
    * begin, end, and rescue. An explicit return keyword is required to stop things after rescue from being executed. Exceptions unwind the call stack looking for handlers, and terminates if it can't find one.
    * Rescue can also apply to the entire definition instead of just begin/end blocks. rescue at the end with a return and a puts can save it from any exceptions that come form standard error.
    * Standard exceptions: RuntimeError, StandardError, and Exception. These derive from things.
    * you can rocket ship an e to get the error, and print info about the error even if you rescue and attempt to continue.
    * Error matches go in a specificity order.

* raising your own exceptions:
    * Use the raise method or its synonym fail. Pass a string and you get a RuntimeError
    * you can raise an error time and the message becomes its type
    * you can write your own exception class. Smart to inherit from standard error.
    * raise without arguments? raises $! which refers to the last raised exception. You can log exceptions and pass them along. Can decide if you can handle and move on or not.
* ensure clause: raised no matter how it gets exited / closed
    * ex: ensure \n hatch_file.close if hatch_file
    * be careful not to put a return in an ensure clause or else the world will end (errors could get swallowed)
* retrying: what if an API server fails to respond? Retry a few times before propogating the exception?

# throw and catch

* different in ruby, but somewhat similar to exceptions. Put code with a throw statement into a catch block.
* catch will accept a code block like an iterator method
* If the throw statement is triggered, the corredponding catch block is terminated
* throw and catch each take exactly one argument and that argument must match for them to work together as anticipated
* getting out of nested loops. Catch returns the second argument of throw if one was provided. Otherwise returns the result of the last expression in its block.

# Scope

* Might be different than you are used to. If, else, loops, etc. DO NOT INTRODUCE SCOPE. This is probably like JS.
* Blocks /do/ introduce scope, so variables inside of explicit blocks are scopey and scopular and of or pertaining to scope.

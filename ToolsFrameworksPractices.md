# Organizing source code

By default, little required file organization.

Better idea:

(1) Structure of the code via mthods, classes, and modules

(2) Structure expressed via files and directories

Established:

lib folder holding your files, nice folder/file structure.

Separation of application code from library code. Facilitates reuse and testing.

bin includes executables

doc includes documentation

test for tests

init.rb for the main application and kicking off application logic

Re-assembly:

(1) require includes a file via an absolute path. Can help to refer to current directory which can be found in __dir__.

ex: require "#{__dir__}/deep_space/spaceship"

$LOAD_PATH has info on where to find files, like defaults.

No need to use the .rb extension.

2nd method is require_relative tht looks relatively. Will not duplicate the requiring.

# Libraries / gems

gem is the command for installing external libraries. A large number of open source ones exist, at rubygems.org -> that's the location used by the gme command.

gem search -r log4r will do a search for a gem, even. Ruby gem installation installs dependencies.

rvm gemsets is... complex. Different versions of ruby and different versions of gems. Allow for compartmentalization. Can specify gemsets if you have rvm.

Managing dependencies: bundler is very useful. It allows immediate gem dependencies to be specificed via single command. gem install bundler to get it.

must be in gemfile that lists dependencies and possibly sources and version info

bundle install will then install required dependencies for a specific project. Check the list into source control and use bundler as they use the source. Neat! Can pull code into the project as well.

# Testing

Ruby community considers tests important. TDD (test driven development) and BDD (behavior driven development) is about coming up with tests and then writing code to make those things happen.

# More info

rubydoc.info

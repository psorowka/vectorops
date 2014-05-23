vector-ops
==========

**Advanced Vector Operations for Ruby.**

READ THIS
----------
This is work in progress and only very few operations are implemented. Feel free to contribute by adding more vector operations 
like multiplication and so on.


Basic
-----

When you want to perform vector operations like summation in ruby, you cannot use the array class as it behaves like this: 

      v1 = [1,1,1,0,0,0]
      v2 = [1,1,1,1,1,1]

      v1 + v2
      # -> [1,1,1,0,0,0,1,1,1,1,1,1]

For this purpose, there is a Vector class, defined in Ruby's stdlib. With Vector objects it's possible to do the following:

      require 'matrix.rb'

      v1 = Vector[1,1,1,0,0,0]
      v2 = Vector[1,1,1,1,1,1]

      v1 + v2
      # -> Vector[2,2,2,1,1,1]

which is exactly what you want. Unfortunately, as of now, the libary seems not to be quite mature, as neither of the following will work by default: 

      v1 = Vector[1,1,1,0,0,0]
      v2 = Vector[1,1,1,1,1,1]

      # assigning values to a vector is impossible 
      # as no []= method is defined in the lib
      v1 += v2

      # adding up subsets of the vectors is not possible, as 
      # the [] accessor returns an array rather than a Vector
      v1[0..3] + v2[0..3]

      # adding a scalar to a vector doesn't work as expected as 
      # the + method doesn't handle this case
      v1 + 2


Using the vector-ops Gem, the following operations work like expected

      v1 = Vector[1,1,1,0,0,0]
      v2 = Vector[1,1,1,1,1,1]

      v1[0..3]
      # -> Vector[1,1,1]

      v1 += v2
      # -> v1 == Vector[2,2,2,1,1,1]

      v1[0..3] += v2[0..3]
      # -> v1 == Vector[2,2,2,0,0,0]

      v1 + 2
      # -> Vector[3,3,3,1,1,1]


Usage
-----

Install vector-ops using the command

      gem install vector-ops

Or include the vector-ops gem into your Gemfile

      gem 'vector-ops'

# Pad an Array

# I worked on this challenge [by myself, with: Logan Bresnahan]

# I spent [2.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin

DEFINE method pad, which takes as input an array, a size, and an optional value

define a blank array called new_array

IF array length is less than size input, our pad should return a copy of the original array with dummy text filling the blank space

ELSE if our size is less than the array itself or if the two are equal, RETURN a copy of the original array


DEFINE method pad!, which takes as input an array, a size, and an optional value

IF array is less than size input, our pad should return the original array edited with dummy text filling the blank space

ELSE if our size is less than the array itself, RETURN the array

=end
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin
def pad(array, min_size, value = nil) #destructive
  if array.length < size
  i = size - array.length
  array.each do |x|
  if i > 0
  array << value
  i-=1
  end
  end
  array
  else
  array
  end
end
=end

#non-destructive

#shortest way which also works on the destructive method,
#but I'm leaving it the old way to show different methods.

=begin
def pad(array, size, value=nil)
 new_array = []
 if array.length < size
  i = size - array.length
  i.times {new_array << value}
  array = array + new_array
 else
  array = Array.new.concat(array)
 end
end

#destructive method
def pad!(array, min_size, value = nil) #destructive
   if array.length < size
      i = size - array.length
      array.each do |x|
        if i > 0
          array << value
          i-=1
        end
      end
        array = array + new_array
    else
        array = Array.new.concat(array)
    end
end
=end

# 3. Refactored Solution

def pad(array, size, value=nil)
 new_array = []
 if array.length < size
  i = size - array.length
  i.times {new_array << value}
  array = array + new_array
 else
  array = Array.new.concat(array)
 end
end

#destructive method
def pad!(array, min_size, value = nil)
 if array.length < min_size
  i = min_size - array.length
  while i > 0
  array << value
  i -= 1
  end
  array
  else
  array
 end
end



# 4. Reflection

=begin

Were you successful in breaking the problem down into small steps?

Yes. The pseudocode was fairly detailed, and helpful in moving towards the end goal of a solution.


Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

For the most part yes. Pseudocode does not specify methods my nature, so we had some work to do still.


Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

For the destructive method, our initial solution was successful. For the non destructive one, we only had one working solution, which was the one you see above.


When you refactored, did you find any existing methods in Ruby to clean up your code?

.times helped to eliminate the need for a rather large series of loops and iterators we used prior.


How readable is your solution? Did you and your pair choose descriptive variable names?

I would say it's fairly readable. Maybe we could include comments inline with the code explaining step by step. That's more of a preference thing. We used "i" for a counter, since that is fairly standard.


What is the difference between destructive and non-destructive methods in your own words?

Destructive changes the original object, as opposed to non-destructive which creates a copy of the original object with the specified changes.


=end
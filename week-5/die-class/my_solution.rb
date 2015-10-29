# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: An integer

# Output: An instance of the die class with the specified number of sides

# Steps: Create the framework for the die class

#An instance of the class should require one parameter for each instance: an integer. This integer should be equal to the number of sides.

#If the given integer is less than 1, an argument error should be given.

#Create a method sides, that returns the number of sides

#Create a method roll, that takes a die and returns a random number from 1 to x. X in this case represents the number of sides.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides

    unless @sides.to_i > 0
      raise ArgumentError.new("Only positive numbers")
    end
  end



  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Only positive numbers") unless @sides.to_i > 0
  end



  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end





# 4. Reflection

=begin

What is an ArgumentError and why would you use one?

An argument error is an error with the input you give a method or class. In this case, if you give the die class an invalid number of sides, it raises an argument error. This is helpful for users who may try to use your class or method. They need to know exactly why  their input doesn't work, and the more feedback they get the better.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implemented rand primarily to simulate the rolling of the die. I had to remember to put the instance variable @sides, inside of rand. I put 6 the first time, which resulted in an error.

What is a Ruby class?

A class is a series of methods collected in one place. When you have a bunch of methods that are fairly related. Another example of a class would be a calculator containing basic arithmetic methods.

Why would you use a Ruby class?

You would use a class to store methods or data that work together. If you want to be able to facilitate methods working together a class is usually a good way to go.

What is the difference between a local variable and an instance variable?

An instance variable is stored inside a class and can be accessed by any method inside said class. Local variables are defined within a method and are only usable within said method. The key word for this is called "scope."


Where can an instance variable be used?

Instance variables can be used in any method within the class it is defined.

=end
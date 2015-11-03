# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a nonempty array
# Output: an instance of the die class
# Steps: Initialize the labels variable and write a check to make sure the labels array has elements in it. The code should not run if the given array is empty
# Define a method sides that takes no input and return the number of sides on the die (number of elements inside the labels array). Define a method roll that picks one of these elements at random.


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Array is empty!") unless @labels.length > 0
  end

  def sides
    return @labels.length
  end

  def roll
    if @labels.length == 1
      return @labels[0]
    else
    return @labels[rand(@labels.length)]
  end
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("Array is empty!") unless @labels.length > 0
  end

  def sides
    return @labels.length
  end

  def roll
    if @labels.length == 1
      return @labels[0]
    else
    return @labels[rand(@labels.length)]
  end
  end
end

#Reflection

=begin


What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  This die class allows for any sort of data to be put on the faces of the die, as opposed to last time where it had to be numbers. I didn't need to change too much from last time. The basic idea was the same, but the result was a more generalized class.

What does this exercise teach you about making code that is easily changeable or modifiable?

  If you generalize more with your code and methods, it can apply to more cases.

What new methods did you learn when working on this challenge, if any?

  I learned about rand(range), which produces a random number in the specified range.

What concepts about classes were you able to solidify in this challenge?

  I solidified the idea of mentally walking through the final product step by step to get a working solution.

=end
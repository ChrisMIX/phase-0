# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is an integer
# What is the output? (i.e. What should the code return?) The code should return a string containing an integer.
# What are the steps needed to solve the problem? The integer first needs to be converted into a string, and then the commas should be inserted in the appropriate spots. If a number is 3 or less digits, no commas are needed.


# 1. Initial Solution

def separate_comma(number)

  number = number.to_s
  reference = number.length - 3
  number2 = number.split(//)

  if number.length > 3
    while reference > 0
      number2.insert(reference, ",")
      reference -= 4
    end
  end
p number2.join
end


# 2. Refactored Solution

def separate_comma(number)
  reference = -4
  number = number.to_s

  if number.length > 3
    while reference * -1 <= number.length
      number.insert(reference, ",")
      reference -= 4
    end
  end
number
end


# 3. Reflection

=begin
What was your process for breaking the problem down? What different approaches did you consider?

I first knew I had to change the integer to a string, which was something I had to keep i mind after changing it to an array.

Was your pseudocode effective in helping you build a successful initial solution?

It helped me at at more basic level. I understood the tasks I needed to accomplish and how the solution should be formatted.


What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I used insert to completely avoid changing the parameter to an array altogether. I had some trouble understanding the syntax, but I eventually figured it out. My code does not use arrays at all in the refactor.

How did you initially iterate through the data structure?

I iterated through it using a while loop in both cases and a stored number that helped to put the commas in the right places.


Do you feel your refactored solution is more readable than your initial solution? Why?

My refactored solution used an implicit return instead of a print or puts and also cut down on the stored variables and excess methods I used.



=end
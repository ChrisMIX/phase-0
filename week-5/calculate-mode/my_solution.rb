# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Natasha Thapliyal]

# I spent [1.75] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# # 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An array containing the value(s) that appears most frequently. If all occur with equal frequency, the same array is returned.
# What are the steps needed to solve the problem? Take the array and compare each element against each other. If the element is the same, then it has occured more than once. A Hash would be created to store the data for how much each value has appeared. Access the hash and create an array comprised of the most common entry or entries.




# 1. Initial Solution

def mode(array)

  data = Hash.new

  while array.length > 0
    frequency = array.count(array[0])

    data[array[0]] = frequency
    array.delete(array[0])


  end

#   p array
  data

  data.each do |k, v|
    array << k if v == data.values.max
  end

  p array
end



mode([1,2,2,2,2,3,4])

# 3. Refactored Solution

def mode(array)

  data = Hash.new

  while array.length > 0
    frequency = array.count(array[0])

    data[array[0]] = frequency
    array.delete(array[0])

  end


  data.each { |k, v| array << k if v == data.values.max }

  p array

end

#4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

We used both hashes and arrays. The Hash contained the key/value was the number and its frequency.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Our pseudocode was a bit general, but in theory the pseudocode would have worked. It was not very actionable.


What issues/successes did you run into when translating your pseudocode to code?

The pseudocode was very general, and we went in a different direction than what we initially wanted to do


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used count, a while loop, delete, .values and .max to sort through the data.



=end
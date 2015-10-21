puts "What's your first name?"
first_name = gets.chomp

puts "What's your middle name?"
middle_name = gets.chomp

puts "What's your last name?"
last_name = gets.chomp

puts "Your full name is #{first_name} #{middle_name} #{last_name}."


puts "What is your favorite number?"
favorite = gets.chomp
favorite = favorite.to_i
favorite += 1
puts "I believe #{favorite} is a bigger and better number."

=begin

**How do you define a local variable?**
  You define a local variable by using the following syntax..

  variable_name = variable_value

  where the left side is the name of the given variable, and the right side is the stored value.


**How do you define a method?**
  You define a method using the following syntax..

  def method_name(method_parameters)

    end


**What is the difference between a local variable and a method?**

A local variable stores a single value, but a method can store a number of things, like instructions, equations, and even variables. Methods can take input and are more dynamic in their interaction than variables.


**How do you run a ruby program from the command line?**
To run a riby program from the command line, you type..

ruby filename


**How do you run an RSpec file from the command line?**
To run an rspec file from the command line you type..

rspec spec_filename

The result will be that the spec file will check your solution you have created.


**What was confusing about this material? What made sense?**

Remembering to check the spec file took some time to get used to. Also the spec files could be rather particular about th correct syntax needed. For instance, I used puts instead of return and had errors I needed to fix. Everything else made plenty of sense. Defining methods and imposing methods on data makes plenty of sense.


https://github.com/ChrisMIX/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/ChrisMIX/phase-0/blob/master/week-4/math/my_solution.rb

https://github.com/ChrisMIX/phase-0/blob/master/week-
4/define-method/my_solution.rb

=end




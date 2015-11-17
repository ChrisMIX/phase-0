# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin

Create a method called reverse, which takes as input a string, and returns the same string with each individual word reversed inside the string. After the method declaration, the string will need to be put into an array where each index value is a word. Then iterate over the array and reverse each element. After that the array elements should once again be combined into a string and the result should be returned.

=end


# Initial Solution

def reverse_words(string)

string = string.split(" ")
string.each do |x|
  x = x.reverse! + " "
  p x
end

string = string.join(" ")
return string


end

p reverse_words("bagels are good")


# Refactored Solution

def reverse_words(string)

string = string.split(" ")

string.each do |x|
  x = x.reverse! + " "
end

string = string.join(" ")
return string


end

p reverse_words("bagels are good")



# Reflection
=begin

What concepts did you review or learn in this challenge?

I got a good review on Ruby syntax and methods pertaining to arrays and strings. I'll be honest that coming back to Ruby took a bit of time. I had to take a moment to remember how it was different from javascript.

What is still confusing to you about Ruby?

Nothing really confuses me about Ruby at this point. I have felt up to this point that Ruby is the more intuitive language compared to javascript.

What are you going to study to get more prepared for Phase 1?


I am going to study syntax and built in methods more. I will also take the time to look at codecademy and the ruby docs.

=end
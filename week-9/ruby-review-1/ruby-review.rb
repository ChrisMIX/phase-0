# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
  array.map do |x|
    if x % 15 == 0
      x = x.to_s.replace("FizzBuzz")
    elsif x % 5 == 0
      x = x.to_s.replace("Buzz")
   elsif x % 3 == 0
      x = x.to_s.replace("Fizz")
    else
      x = x
  end
end
end




# Refactored Solution


def super_fizzbuzz(array)
  array.map do |x|
    if x % 15 == 0
      x = "FizzBuzz"
    elsif x % 5 == 0
      x = "Buzz"
   elsif x % 3 == 0
      x = "Fizz"
    else
      x = x
  end
end
end




# Reflection

#What concepts did you review in this challenge?
#I reviewed each and if else statements.

#What is still confusing to you about Ruby?
#the fact that each is non destructive always slips my mind

#What are you going to study to get more prepared for Phase 1?
#I am going to study ruby and javascript syntax
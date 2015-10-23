# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_nums)
result = list_of_nums[0]
if list_of_nums.empty?
  puts "Array is empty."

else
list_of_nums.each do |x|

  if x.length > result.length
    result = x
  else
    result = result
  end


end
end
p result
end
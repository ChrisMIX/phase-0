# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

=begin
def smallest_integer(list_of_nums, sorted_list =[])

return sorted_list unless list_of_nums.length > 0

small = list_of_nums.min

list_of_nums.each {|x| sorted_list << x if x == small}

=end

def smallest_integer(list_of_nums)
y = 1

  if list_of_nums.empty?
    puts "Array is empty."

  else
    list_of_nums.each do |x|

      if list_of_nums.length < 2
        p x

      elsif x < list_of_nums[y]
        list_of_nums.pop list_of_nums[y]
        smallest_integer(list_of_nums)

      elsif x > list_of_nums[y]
        list_of_nums.pop x
        smallest_integer(list_of_nums)

      else
        smallest_integer(list_of_nums)

      end




    end


  end

end
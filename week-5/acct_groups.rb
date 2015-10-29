=begin

PSEUDOCODE:

DEFINE the method group, which takes as input an array and returns multiple arrays.

The data should be taken and mixed up
The data should then be sorted in groups of 3, 4, or 5, based on divisibility.

If the length of the array is an awkward number, take three elements from the array, and run the rest of the array into the method again.
=end

#Initial Solution

def group(array)

  groups = array.shuffle
  groups = []

  if array.length % 5 >= 3 || array.length % 5 == 0
    groups = array.each_slice(5).to_a

  elsif array.length % 4 == 3 || array.length % 4 == 0
    groups = array.each_slice(4).to_a

  elsif array.length % 3 == 0
    groups = array.each_slice(3).to_a

  else
    groups << [array[0], array[1], array[2]]
    array = array - [array[0]]
    array = array - [array[0]]
    array = array - [array[0]]
    groups = groups.shuffle
    group(array)

  end
  p groups
end

group([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22])

#Refactored Solution

def group(array)

array.shuffle!
groups = []

if array.length % 5 >= 3 || array.length % 5 == 0
    p array = array.each_slice(5).to_a

  elsif array.length % 4 == 3 || array.length % 4 == 0
    p array = array.each_slice(4).to_a

  elsif array.length % 3 == 0
    p array = array.each_slice(3).to_a

  else
    groups = groups << array.pop(3)
    group(array)

  end
    p groups
end

group([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22])


=begin
What was the most interesting and most difficult part of this challenge?

The most difficult part of the challenge was constructing the initial solution. This problem required a couple specialized methods to create the ideal answer. It was also difficult knowing that my solution could be much better, but I have to just leave it be at a certain point. It was really interesting learning about new ruby methods.



Do you feel you are improving in your ability to write pseudocode and break the problem down?

I feel like I am getting better, but I need to keep going until I get to where I want to be with it. I feel like Pseudocode should be less of an annoyance, and more of a necessity. I'm just not sure if mine is there yet.



Was your approach for automating this task a good solution? What could have made it even better?


My approach initially was fairly messy, and the refactored one was certainly a bit better. If I had had the method print up a statement of groups, it would have certainly been better. Also if I figured out how to combine the broken up group segments, that would have looked more presentable.


What data structure did you decide to store the accountability groups in and why?

I stored the accountability group in an array, because I think it lends itself better to breaking it up into smaller groups. Also, it was the option I thought of first so I just ran with it. If I wanted it to look more presentable, I could have used a hash where the key was a name, and the accountability group was a value.



What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I learned that there are methods in ruby that can simplify more complicated expressions I type in my initial solution.

=end


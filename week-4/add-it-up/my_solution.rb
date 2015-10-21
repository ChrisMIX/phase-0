# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

#Define method total with an array argument. The method take in the array, checks to see if the array is empty. If it is
#we stop and print out array empty if it isnt we go into a while loop.
#Inside the while loop we retrieve each element of the array and add them all together step by step incrementing array index number until the array index number
#reaches array length.

# Input:Array
# Output:Integer/Float

# Steps to solve the problem.
#Check if empty
#Retrieve Array Value by Index number
#Add Array Value to previously retrived array number
#Increase Array index value
#Repeat until index value reaches array length

# 1. total initial solution

def total(num_array)

 if num_array.empty? == true

  puts "Array is empty add some values"

 else

  index = 0

  add = 0


  while index < num_array.length

  add = add + num_array[index]

  index += 1

  end

  p add
 end
end

# 3. total refactored solution

def total_ref(num_array)

p num_array.reduce(:+)

end

# a = [5,5,10]
# total_ref(a)

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

#Define method sentence maker with an array argument`. The method take in the array, checks to see if the array is empty. If it is
#we stop and print out array empty if it isnt we use join method with " ," as argument.

# Input: String Array
# Output:String
# Steps to solve the problem.

#Check if empty
#Use method join with space as argument
#Return string with spaces

# 5. sentence_maker initial solution

def sentence_maker(s_array)

 if s_array.empty? == true

  puts "Array is empty add some values"

 else

  p s_array.join(' ').capitalize + '.'

 end
end

# 6. sentence_maker refactored solution

# Initial solution is the
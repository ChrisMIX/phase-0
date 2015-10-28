# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
=begin

My first method checks an array for a specific letter and returns a new array containing all of the values that contain said letter.

I start the method by defining an empty array where I will place all the desired values. Then I need to check if the array is empty, hence the first if statement. If it is non-empty, we go to an each statement that contains a second if statement inside it. In the second if, we convert the given index value to a string and check if it has the given letter using include?. If the letter is found in the given string, it is shoveled into the previously defined array, called "answer".If not, the statement moves on to the next item in the array. The code does an implicit return of the newly crafted array at the end.

=end
def my_array_finding_method(source, thing_to_find)
  answer = []
  if source

    source.each do |x|
      if x.to_s.include? thing_to_find
        answer << x.to_s
      end
    end

  else
    puts "Array is empty."

  end
  answer
end

=begin

My second method checks an array for a specific letter and returns a new array containing all of the values that contain said letter.

I start the method by defining an empty array where I will place all the desired values. Then I need to check if the hash is empty, hence the first if statement. If it is non-empty, we go to an each statement that contains a second if statement inside it. In the second if, we check if the value matches the thing_to_find. If it matches, the key is converted to a string and shoveled into the previously defined array, called "solution".If not, the statement moves on to the next item in the array. The code does an implicit return of the newly crafted array at the end.

=end

def my_hash_finding_method(source, thing_to_find)
  solution = []

  if source
    source.each do |x, y|
    if source[x] == thing_to_find
      solution << x.to_s

    end
  end
else
  puts "The Hash is empty"
end
  solution
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
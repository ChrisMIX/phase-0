# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------



# 1. What is the name of the file with the error?

#  The name of the file is errors.rb

# 2. What is the line number where the error occurs?

#  The error occurs on line 8

# 3. What is the type of error message?

#  It is a syntax error

# 4. What additional information does the interpreter provide about this type of error?

# The interpreter says it did not expect an =, but rather it expected end-of-input

# 5. Where is the error in the code?

# The interpreter did not expect the = sign between "I'm going home" and "cartmans_phrase"

# 6. Why did the interpreter give you this error?
# The variable name needs to be the first item on the line, followed by the = sign and the assignment.


=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?

#  The name of the file is errors.rb

# 2. What is the line number where the error occurs?

#  The error occurs on line 180

# 3. What is the type of error message?

#  It is a syntax error

# 4. What additional information does the interpreter provide about this type of error?

# The interpreter says it expected an end statement

# 5. Where is the error in the code?

# The code above needs an additional end statement. One is needed for the while, and the method.

# 6. Why did the interpreter give you this error?

# There needs to be another end statement in the above code, but there is only one.
# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# line 74

# 2. What is the type of error message?
# in <main>

# 3. What additional information does the interpreter provide about this type of error?

# The interpreter states that there us an undefined local variable or method, "south_park"

# 4. Where is the error in the code?

# There is simply a call to south_park without any other information

# 5. Why did the interpreter give you this error?

# There needs to be an assignment given to south_park, whether that would be a variable or method assignment. The syntax is incomplete as is.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?

# line 96

# 2. What is the type of error message?

# in <main>

# 3. What additional information does the interpreter provide about this type of error?

#the method "cartman" is undefined

# 4. Where is the error in the code?

# The method needs more syntax to get rid of the error

# 5. Why did the interpreter give you this error?

# MEthods need at the very least an end statement and a def before the method. Content is not necessary to be syntactically correct, but is needed if calling the method is to have any purpose

# --- error -------------------------------------------------------

=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end

# 1. What is the line number where the error occurs?

# line 120

# 2. What is the type of error message?

# in "cartman's phrase"

# 3. What additional information does the interpreter provide about this type of error?

# wrong number of arguments

# 4. Where is the error in the code?

# The method does not ask for arguments, but the method call does, which creates this conflict.

# 5. Why did the interpreter give you this error?

# If the method call is giving a series of arguments, the method definition should account for that number of arguments. Alternatively, the method call is changed to accomodate

# --- error -------------------------------------------------------

=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end

# 1. What is the line number where the error occurs?

# line 150

# 2. What is the type of error message?

# in "cartman_says"

# 3. What additional information does the interpreter provide about this type of error?

# wrong number of arguments

# 4. Where is the error in the code?

# This error is the same as the previous one, but the method has more arguments than the method call does

# 5. Why did the interpreter give you this error?

# The method and its call have to have the same number of arguments. The call needs to have an argument given to it to pass along to the method itself.



# --- error -------------------------------------------------------

=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?

# line 182

# 2. What is the type of error message?

# in "cartmans_lie"

# 3. What additional information does the interpreter provide about this type of error?

# wrong number of arguments

# 4. Where is the error in the code?

# Once again, the number of arguments in the method definition and method call do not match up, which is not allowed.

# 5. Why did the interpreter give you this error?

# The method call is missing an argument. It should be given another one, so it can give the method everything it needs to run.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?

# line 212

# 2. What is the type of error message?

# in "*"

# 3. What additional information does the interpreter provide about this type of error?

# String can't be coerced into fixnum

# 4. Where is the error in the code?

# The order of elements here is incorrect.

# 5. Why did the interpreter give you this error?

# When trying to use multiplication with strings and integers, you need to put the string first, followed by the number. The way to remember this is that you want to tell the computer "Hey, I want to take this string and multiply it by this number." The reverse orientation does not make any sense by that logic.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?

# line 236

# 2. What is the type of error message?

# in "/"

# 3. What additional information does the interpreter provide about this type of error?

# divided by zero

# 4. Where is the error in the code?

# You can't divide by zero. Standard math rules apply when using the built in math related functions.

# 5. Why did the interpreter give you this error?

# 0 cannot be the second argument for the division function. It should be changed to another number.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"


# 1. What is the line number where the error occurs?

# line 261

# 2. What is the type of error message?

# in "require_relative"

# 3. What additional information does the interpreter provide about this type of error?

# can't load such file

# 4. Where is the error in the code?

# the file described does not exist on my system

# 5. Why did the interpreter give you this error?

# The file mentioned does not exist. It should be created first


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?

The most difficult to read error would be the syntax one, because it is much less specific than one identifying a specific function or method to look at.

How did you figure out what the issue with the error was?

I checked the line number as well as the surrounding code to see if there were any conflicts.

Were you able to determine why each error message happened based on the code?
I thought about what may have been missing, or what syntax may have been incorrect.

When you encounter errors in your future code, what process will you follow to help you debug?

I will try to run the code and address errors one by one in this fashion. It is a bit of a grind, but it also is an efficient way to check one's work.


  =end
# Factorial

# I worked on this challenge [with: Luis Paz].


# Your Solution Below
def factorial(number)
  # Your code goes here
  if number < 0

    puts "The number must be positive"

  elsif number == 0

    p 1

  else

    number_array = []

    index = 0

    index_factorial = 0

    fact = 1

    while number>0

      number_array[index] = number

      index += 1

      number -=1
    end

    while index_factorial < number_array.length

      fact = fact * number_array[index_factorial]

      index_factorial +=1
    end

    p fact

  end

end
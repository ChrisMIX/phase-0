# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)

  solution = []

  if array_1.empty? && array_2.empty?
    puts "Arrays are empty."

  elsif array_1.empty?
    puts array_2

  elsif array_2.empty?
    puts array_1

  else
    array_1.each do |x|
      solution.push(x)
    end

    array_2.each do |x|
      solution.push(x)
    end

  end
  p solution
end
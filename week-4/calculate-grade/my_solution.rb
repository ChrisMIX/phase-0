# Calculate a Grade

# I worked on this challenge [by myself, with: Luis Plaz].


# Your Solution Below

def get_grade(average)

 if average >= 90

  p "A"

 elsif average >= 80 && average <=89

  p "B"

 elsif average >= 70 && average <=79

  p "C"

 elsif average >= 60 && average <=69

  p "D"

 elsif average <=60

  p "F"

 else

  puts "NOT A CORRECT GRADE"

 end

end
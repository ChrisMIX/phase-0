**What does puts do?**
puts gives you a return value of nil, and then prints your output to the console.

**What is an integer? What is a float?**

An integer is quite simply a number without a decimal point. Floating point numbers or "floats" are numbers that have decimal points.

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**

Integer division takes your answer and rounds it down. Float division takes the entire answer and returns it to you. Take for example 9/2. The answer to that would be 4.5, right? Well that's true for float division, but for integer division the answer is simply 4.

...ruby
hours = 365 * 24
puts "The number of hours in a year is #{hours}"
...

...ruby
minutes = 10*365*60*60
puts "The number of minutes in a decade is #{minutes}"
...
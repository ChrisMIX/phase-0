# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution


class GuessingGame
  def initialize(answer)
    @answer = answer
    @result = :high
  end

  def guess(number_guess)
    if number_guess > @answer
      @result = :high
    elsif number_guess < @answer
      @result = :low
    elsif number_guess == @answer
      @result = :correct
    end
  end

  def solved?
    if @result == :correct
      return true
    else
      return false
    end
  end
end






# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @result = :high
  end

  def guess(number_guess)
    if number_guess > @answer
      @result
    elsif number_guess < @answer
      @result = :low
    elsif number_guess == @answer
      @result = :correct
    end
  end

  def solved?
    if @result == :correct
      true
    else
      false
    end
  end
end





# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Any given item has its own set of rules and capabilities. Any item would also need to meet a certain set of characteristics to fit under the definition of said item.

When should you use instance variables? What do they do for you?

Instance variables are great because they let you pass around data between methods within a class. This is to my knowledge the only way you could properly make the solved? method work as it needed to.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

With if statements you have to remember that if a particular branch runs completely through, the others will not be addressed. That is why you have to make sure each branch on it's own leads to a desired outcome.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

The benefit of using a symbol is that it is constant and cannot be changed. In a sense I suppose that would be more reliable in some cases. They are also entirely unique. Two identical symbols have the same id, unlike strings

=end
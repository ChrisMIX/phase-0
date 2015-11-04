=begin

Starting with the second to last digit, double every other digit until you reach the first digit.

Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).

If the total is a multiple of ten, you have received a valid credit card number!

=end


# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
=begin
step 1: - DEF METHOD initialize that takes INT argument
        - IF card size is not equal to 16
            RAISE argument
        - ELSE
            set INSTANCE variable CARD to credit card number
            set INSTANCE variable VALIDATION to an array of digits

step 2: - DEF METHOD double digits
        - create a COUNTER VAR and set it to the second to last element
        - WHILE the counter greater than or equal to zero
            Loop through each element in validation and times the element by 2
            reduce counter by 2 to skip one element

step 3: - DEF METHOD sum digits
        - ASSIGN validation to an array with single digits. Loop and retun a copy of array
        - IF element is greater than 2 digits
            the element is equal to the element divided by 10 plus element modulus 10
        - ELSE
            return element
        - ASSIGN validation to the sum of all of the digits in each element (sum all the elements)

step 4: - DEF METHOD check_card
        - invoke method double digits
        - invoke method sum digits
        - IF validation mod 10 returns 0
            RETURN true
        - Else
            RETURN false

=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(card_number)
    if card_number.to_s.size != 16
      raise ArgumentError.new("Card number needs to be 16   digits")
    else
      @card_number = card_number.to_s.split(//)
    end
  end

  def double_digits
    @card_number.map! do |x|
      x.to_i
    end
    counter = 14
    while counter >= 0
      @card_number[counter] *= 2
      counter -= 2
    end
    @card_number
  end

  def sum_digits
    @card_number.map! do |x|
      if(x >= 10)
        x = (x / 10) + (x % 10)
      else
        x
      end
    end
    @card_number = @card_number.inject { |sum, n| sum + n }
  end

  def check_card
    double_digits
    sum_digits
    if(@card_number % 10 == 0)
      p true
    else
      p false
    end
  end

end

card = CreditCard.new(4563960122001998)
card.check_card

# Refactored Solution

class CreditCard

  def initialize(card_number)
    if card_number.to_s.size != 16
      raise ArgumentError.new("Card number needs to be 16   digits")
    else
      @card_number = card_number.to_s.split(//).map! { |x| x.to_i }
    end
  end

  def double_digits
    counter = 14
    while counter >= 0
      @card_number[counter] *= 2
      counter -= 2
    end
    @card_number
  end

  def sum_digits
    @card_number.map! do |x|
       (x >= 10) ? x = (x / 10) + (x % 10) : x
       # if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
    end
    @card_number = @card_number.inject { |sum, n| sum + n }
  end

  def check_card
    double_digits
    sum_digits
    (@card_number % 10 == 0) ? true : false
  end

end

card = CreditCard.new(4563960122001999)
card.check_card




# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?

Getting the credit card number into formats that worked for the methods was a bit cumbersome.

What new methods did you find to help you when you refactored?

I learned about .inject, which does whatever binary operation you specify to all elements of an array.

What concepts or learnings were you able to solidify in this challenge?

I got a better understanding of proper syntax and how ternary operations work.

=end
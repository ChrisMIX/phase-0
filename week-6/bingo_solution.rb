# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #create an array containing BINGO as individual letters and a variable that contains the result of picking a random number from 1 to 100. Shuffle the array and pick the first index value to make it random.

# Check the called column for the number called.
  #Check to see which letter was picked out, and cross reference the number with the column matching the letter

# If the number is in the column, replace with an 'x'
  #If the number matches an element in the column of the array, replace said element with "X"

# Display the board to the console (prettily)
 #Not quite sure how to make it look better. Using P is the best idea I have at the moment.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @stored_value = 0
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
    number = rand(1..100)
    letters.shuffle!
    @stored_value = letters[0] + number.to_s
  end

  def check
    counter = 0
    call
    if @stored_value.include? "B"
      @stored_value = @stored_value.gsub("B", "")

      while counter <= 4
        if @bingo_board[counter][0] == @stored_value
          @bingo_board[counter][0] = "X"
          counter += 4
          p @bingo_board
        else
          counter += 1
        end
      end

    elsif @stored_value.include? "I"
      @stored_value = @stored_value.gsub("I", "")

      while counter <= 4
        if @bingo_board[counter][1] == @stored_value
          @bingo_board[counter][1] = "X"
          counter += 4
          p @bingo_board
        else
          counter += 1
        end
      end

    elsif @stored_value.include? "N"
      @stored_value = @stored_value.gsub("N", "")
      while counter <= 4
        if @bingo_board[counter][2] == @stored_value
          @bingo_board[counter][2] = "X"
          counter += 4
          p @bingo_board
        else
          counter += 1
        end
      end

    elsif @stored_value.include? "G"
      @stored_value = @stored_value.gsub("G", "")
      while counter <= 4
        if @bingo_board[counter][3] == @stored_value
          @bingo_board[counter][3] = "X"
          counter += 4
          p @bingo_board
        else
          counter += 1
        end
      end

    elsif @stored_value.include? "O"
      @stored_value = @stored_value.gsub("O", "")
      while counter <= 4
        if @bingo_board[counter][4] == @stored_value
          @bingo_board[counter][4] = "X"
          counter += 4
          p @bingo_board
        else
          counter += 1
        end
      end
    end
    p @bingo_board
  end

end

# Refactored Solution

=begin

I attempted to refactor, but I kept hitting walls and could not figure out how to make it more readable. I know the check method is where there definitely could be less text, but I'm not sure what to do about it at the current moment.

=end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
new_game.check


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Pseudocoding this challenge was not to difficult. In theory, the problem is not terribly complex. Implementing the code is when I hit trouble.

What are the benefits of using a class for this challenge?

The class allows you to utilize instance variables that you can pass between methods in the class. It makes the prospect of methods working together much easier.

How can you access coordinates in a nested array?

You would reference the array, the index value of the sub array, and the index value of the specific number in the sub array. EX: array[0][0] would grab the first element of the first sub array.

What methods did you use to access and modify the array?

I used index values mainly to access the elements and manually set them equal to "X" as needed.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I learned about include? which checks a string for a given substring.

How did you determine what should be an instance variable versus a local variable?

instance variables were pieces of data that needed to be passed around to multiple methods, like the board or the letter/number combination chosen.

What do you feel is most improved in your refactored solution?

I could not figure out any refactoring at the current moment. so nothing is improved yet.

=end

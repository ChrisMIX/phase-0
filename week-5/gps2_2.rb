# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)

#DEFINE method called new_list
#  RETURN empty hash
#DEFINE method add_item that takes parameters list, item, and quantity
#  RETURN list with quantity at key "item"

#DEFINE method remove_item that takes the parameter list and item
#  IF list has a value at key item
#    RETURN updated list
#  ELSE
#    RETURN list
#DEFINE method update_item that takes the parameters list, item, and quantity
#  IF list has value at key "item,"
#    RETURN the list with value at key "item" changed to quantity
#  ELSE
#    RETURN the list
#DEFINE method print_list that takes the parameter list
#  ITERATE over the list
#    for each key/value pair, print value first, followed by the key

new_list = Hash.new

def new_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
  list.delete(item) if list[item]
end

def update_item(list, item, quantity)
  list[item] = quantity if list[item]
end

def print_list(list)
  puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{quantity} #{item.capitalize}"
  end
end

my_list = new_list
new_item(my_list, "lemonade", 2)
new_item(my_list, "tomatoes", 3)
new_item(my_list, "onions", 1)
new_item(my_list, "ice cream", 4)
remove_item(my_list, "lemonade")
update_item(my_list, "ice cream", 1)
print_list(my_list)


=begin

**What did you learn about pseudocode from working on this challenge?**

Psuedocode is a lot like an outline for a paper. It helps give you direction and stay focused on what job you need the final product to fulfill.

**What are the tradeoffs of using Arrays and Hashes for this challenge?**

Using Hashes means you are able to customize the key and value, which makes more sense for a grocery list with changing values. Using an array means you can have a more defined order, but you may have to be a little more wordy with your index values. For example, with a hash you may type something along the lines of...

{
  lemons => 2
}

whereas in an array you may have to type...

["lemons: 2"]

**What does a method return?**

A method returns the data you ask it to give back to you. In this case, most of the time that data was the given hash that was passed in.

**What kind of things can you pass into methods as arguments?**

You can pass all kinds of things into methods as arguments. For example, you can pass a method integers, floats, strings, symbols, variables, hashes, arrays, and countless other things.

**How can you pass information between methods?*8

You can pass information between methods by defining a variable outside of the methods to utilize, or you do it through your tests outside the methods themselves.


**What concepts were solidified in this challenge, and what concepts are still confusing?**

This challenge solidified the concepts of implicit returns, pseudocode, and iteration. The one thing that is still a tad confusing would be proper ruby syntax. The reason I say that specifically is that some parts of ruby are still coming back to me. Sometimes it takes me a little time to remember exactly how a line of code should be typed. It's something that I'm certain will be better addressed with this week's workload.


=end

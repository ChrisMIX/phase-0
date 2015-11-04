# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:4
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |x|

if x.kind_of?(Array)
  x.each do |nested_item|
    p nested_item
  end
else
  p x
end

end


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |x|
  if x.kind_of?(Array)
    x.each do |y|
      if y.kind_of?(Array)
        y.each do |z|
          p z + "ly"
        end
      else p y + "ly"
      end
    end
  else
    p x
  end
end


=begin

REFLECTION

What are some general rules you can apply to nested arrays?

Some general rules would be that you want to use the method .kind_of?(Array) to access them in a flow control setting. Aside from that, you can chain index values together to refer to arrays within arrays. For example:

array = [1, [1, 2]]

to access 2, the syntax would be array[1][1]

What are some ways you can iterate over nested arrays?

You can use an if statement that checks to see if the given element is an array, at which point you can establish a specific set of rules or instructions for the branch. As stated in the previous question, use .kind_of?(Array) to check that.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

.kind_of(Array) was the one new thing here that I utilized




=end

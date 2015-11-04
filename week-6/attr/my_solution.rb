#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

attr_accessor :name

def initialize
  @name = "Chris"
end

end


class Greetings
def initialize
  @namedata = NameData.new
end

def hello
puts "Hello #{@namedata.name}"
  end
end

greet = Greetings.new
p greet.hello


# Reflection

=begin
RELEASE 1 REFLECTION

What are these methods doing?

  The methods either return the instance variable, or return the instance variable changed to the desired parameter.

How are they modifying or returning the value of instance variables?

  The methods are modifying the instance variables through special syntax in the method definition. It is typed like so...

  def change_name=(newname)
  name =newname
  end

  attr: reader is used in place of the above method with regards to the age variable

RELEASE 2 REFLECTION

What changed between the last release and this release?

  The what_is_age? method was deleted in favor of using attr: reader with age. That accomplishes the same goal with much less code. The change_age method was deleted in favor of attr: writer

What was replaced?

  The previously mentioned method was eliminated and attr: reader and attr: writer were implemented instead.

Is this code simpler than the last?

  This code eliminates the need for two of the methods entirely, so it is indeed simpler.

RELEASE 3 REFLECTION

What changed between the last release and this release?

attr: accessor was implemented with age.

What was replaced?

attr: accessor condensed reader and writer together

Is this code simpler than the last?

This code eliminates a line of code, which helps.

RELEASE 6 REFLECTION

What is a reader method?

A reader method allows you to return the given variable or parameter in one simple line of code versus creating a method for that purpose.

What is a writer method?

A writer method allows you to change the given variable or parameter in one simple line of code versus creating a method for that purpose.

What do the attr methods do for you?

They allow you to return the name and change it without writing separate methods entirely. It streamlines the code more.

Should you always use an accessor to cover your bases? Why or why not?

I don't think that would always be the way to go. What if you were storing sensitive information that you didn't want changed? In that case you might just use reader.

What is confusing to you about these methods?

Nothing is terribly confusing about these methods, aside from the specific cases when you might use writer or reader specifically instead of accessor.

=end
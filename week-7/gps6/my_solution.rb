# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Tells the program where to locate another file needed to execute code.
# Require is different because ruby already knows where to locate the file.

require_relative 'state_data'



class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    # Define the class, what it is and what it does. Establish the instance variables.
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    # Calculate the virus effects using predicted_deaths, speed_of_spread, and instance variables.
    # Input the instance variables into predefined methods
    predicted_deaths
    speed_of_spread
  end

  private
  # ???

  def predicted_deaths
    # Takes population density and applies a calculation to predict deaths.
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread
    # Uses population density variable to identify rate of spread.
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
current_state = VirusPredictor.new(state, info[:population_density], info[:population])
current_state.virus_effects
end

#=======================================================================



# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

There is a hash within a hash. The first hash uses the hash rocket style, while the second one utilizes symbols and no rockets.

What does require_relative do? How is it different from require?
What are some ways to iterate through a hash?

require_relative just has you put a relative path for the file you want to utilize. Require has you putting the full path. With PRofessional Ruby documents you want to use, require is more optimal.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The thing that stood out was that essentially attr writer and reader could replace the functions being used within the code.

What concept did you most solidify in this challenge?

I solidified my understanding of attr_writer and attr_reader. Also, I have a better understanding for instance variables.


=end
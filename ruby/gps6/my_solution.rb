# Virus Predictor

# I worked on this challenge [with: Henry Fyfe ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative calls other files in the file structure. The file location is relative to the ruby file being executed.
# require looks in your gemset and gems library directories before checking in directories relative to the file for what is being required.
#
#
require_relative 'state_data'

class VirusPredictor

# Creates new instance of class. 3 parameters assigned to same named instance variables
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

# Calls two private methods. The method does not have to be passed any parameters, calling the private methods with instance variables.
 def virus_effects
   predicted_deaths(@population_density, @population, @state)
   speed_of_spread(@population_density, @state)
 end

 private

# Based on value of the population density, the deaths calculation is the population multiplied times a different factor. Then prints result
 def predicted_deaths(population_density, population, state)
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

# Based on value of the population density, the speed calculation is adding a factor based on the population density
 def speed_of_spread(population_density, state) #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name,state_data|
  VirusPredictor.new(state_name, state_data[:population_density], state_data[:population]).virus_effects
end

#=======================================================================
# Reflection Section

#california.speed_of_spread(STATE_DATA["California"][:population_density],"California")
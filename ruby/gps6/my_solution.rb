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
   predicted_deaths
   speed_of_spread
 end

 private

# Based on value of the population density, the deaths calculation is the population multiplied times a different factor. Then prints result
 def predicted_deaths
   # predicted deaths is solely based on population density
   factor = (@population_density/50).floor
   if factor > 0.4
    factor = 0.4
   elsif factor <0.05
    factor = 0.05
   end

   number_of_deaths = (@population * factor).floor

   print "#{@state} will lose #{number_of_deaths} people in this outbreak"

 end

# Based on value of the population density, the speed calculation is adding a factor based on the population density
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.

   speed = 2.5 - (@population_density/10).floor/10
   if speed < 0.5
    speed = 0.5
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
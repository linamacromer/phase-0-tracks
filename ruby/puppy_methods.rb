class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	counter = 0
  	while counter < times
  	puts "Woof!"
  	counter += 1
  	end
  end

  def roll_over
  	puts "*rolls over*"
  end

end

# User Interface

Artie = Puppy.new
toy = "ball"
times = 4

Artie.fetch(toy)
Artie.speak(times)
Artie.roll_over
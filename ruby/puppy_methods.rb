class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# User Interface

Artie = Puppy.new
toy = "ball"

Artie.fetch(toy)
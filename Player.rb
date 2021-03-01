require 'pp'

class Player

  # contains values that change, values we will need to access later
  attr_accessor :name, :lives
  
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end
  
  def lose_life
    @lives -= 1
  end
end
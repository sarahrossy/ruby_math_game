require 'pp'

class Question

  attr_accessor :number_one, :number_two, :answer
  
  def initialize(one, two, answer)
    @number_one = rand(1..20).to_i
    @number_two = rand(1..20).to_i
    @answer = @number_one + @number_two
  end

  def number_generator
    @number_one = rand(1..20).to_i
    @number_two = rand(1..20).to_i
    @answer = @number_one + @number_two
  end  

  def user_prompt
    puts "What does #{number_one} plus #{number_two} equal?"
  end  

end  
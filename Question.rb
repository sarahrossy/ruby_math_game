require 'pp'

class Question

  attr_accessor :number_one, :number_two
  
  def initialize(one, two)
    @number_one = one
    @number_two = two
  end

  def number_generator
    @number_one = rand(1..20).to_i
    @number_two = rand(1..20).to_i
  end  

  def sum_question
    answer = @number_one + @number_two
    puts "What does #{number_one} plus #{number_two} equal?"
    gets.chomp.to_i == answer ? "YES! You are correct!" : "Seriously? No!"
  end  

end  

test = Question.new("one", "two")

pp test
puts test.number_generator
pp test
puts test.sum_question
require 'pp'

require_relative('Player')
require_relative('Question')

class Game

  def initialize()
    @player_one = Player.new("Player 1")
    @player_two = Player.new("Player 2")
    @math = Question.new("one", "two", "answer")
    @current_player = @player_one
    @game_over = false
  end

  def start

    while @game_over == false

      @math.number_generator
      
      puts "#{@current_player.name}, it's your turn!"
      @math.user_prompt
      
      if gets.chomp.to_i == @math.answer
        puts "You got the right answer!"
      else
        puts "Wrong answer! -1 life"
        @current_player.lose_life
        puts "#{@current_player.name}, you have #{@current_player.lives} lives remaining."
      end
      
      # check if current player still has lives remaining
      if @current_player.lives == 0
        @game_over = true
        winner = check_winner
        puts "Game over! The winner is #{winner.name}"
      else  
          rotate_player 
      end    
    end 
  end

  def rotate_player
    if @current_player.name == @player_one.name
      @current_player = @player_two
    else
      @current_player = @player_one
    end
  end

  def check_winner
    if @current_player.name == @player_one.name
      @player_two
    else 
      @player_one
    end
  end

end
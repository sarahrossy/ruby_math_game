# v1 = ARGV[0]
# v2 = ARGV[1]

puts v1

# Create a 2-Player math game where players take turns to answer simple math addition problems.

# A new math question is generated for each turn by picking two numbers between 1 and 20.

# The player whose turn it is is prompted the question and must answer correctly or lose a life.

##### REQUIREMENTS
  # Both players start with 3 lives.
  # They lose a life if they mis-answer a question. 
  # At the end of every turn, the game should output the new scores for both players, so players know where they stand.
  # The game ends when one player loses all their lives.
  # Then, the game should announce who won and what the other player’s score is.

# Class Player - to keep track of the specific player's name and increment score for correct answers
  # @name
  # @score = 0

# Class Game - to keep track of game's length, evaluates player responses, and send messages to console
  # current_player  [Player1, Player2] -- property of another class
      # or make a class for each:  Player1 / Player2
  # progress check
  # @game_lives = 3  
  # score_update method
  # messages
    # --- NEW TURN ---, --- GAME OVER ---
  
# Class MathQuestions - generates math questions  
  # math_questions
    # picking two numbers between 1 and 20
    # player_answer - INPUT
    # question_answer - OUTPUT

# COMPARED TO REACT
# Properties - state/props of a class
# Methods - a way of editing state, to get useful information
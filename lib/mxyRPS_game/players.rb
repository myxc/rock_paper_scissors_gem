module MxyRPSGame
  class Players
  	def initialize
  	  @player1 = "filler"
  	  @player2 = "filler"
  	end

  	def prompt
  		puts "Hello, welcome to Rock Paper Scissors!\nRock beats Scissors\nScissors beats Paper\nPaper beats Rock \nPlayer 1 please pick your move!"
  		@player1 = gets.to_s.downcase.strip
  		loop do
	  		break if ["rock", "scissors", "paper"].include?(@player1)
  		  puts "Player 1 please enter ONE of the THREE options (rock/paper/scissors)"
  		  @player1 = gets.to_s.downcase.strip
	  	end
  		puts "Okay, thank you for your input! Player 2 please pick your move!"
  		@player2 = gets.to_s.downcase.strip
   		loop do
  		  break if ["rock", "scissors", "paper"].include?(@player2)
		    puts "Player 2 please enter ONE of the THREE options (rock/paper/scissors)"
		    @player2 = gets.to_s.downcase.strip
  		end
  	end

  	def check_win
  		if @player1 == @player2
  			puts "You've both decided to use #{@player1} and resulted in a tie.\nPlease play another round."
  			prompt
  		end
  		if (@player1 == "scissors" and @player2 == "paper") || #If any of these conditions in which player 1 wins is true
  			 (@player1 == "paper" and @player2 == "rock")     || #then display player 1 as the winner
  			 (@player1 == "rock" and @player2 == "scissors")
  			puts "Player 1 has won this round!"
  		else
  			puts "Player 2 has won this round!" #otherwise, since they did not tie, player 2 must have won.
  		end
  	end
  end
end
require "mxyRPS_game/version"
require "mxyRPS_game/players"
module MxyRPSGame
  
  def play(game = game)
    game = Players.new
    loop do 
	    game.prompt
	    game.check_win
	    puts "Do you want to play again?"
	    break unless ["yes", "y"].include?(gets.to_s.downcase.strip)
	  end
	end
	play(game)
end

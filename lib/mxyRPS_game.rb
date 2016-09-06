require "mxyRPS_game/version"
require "mxyRPS_game/players"
module MxyRPSGame
  def play
    game = Player.new
    loop do 
	    game.prompt
	    game.check_win
	    puts "Do you want to play again?"
	    break unless ["yes", "y"].include?(gets.to_s.downcase.strip)
	  end
	end
end
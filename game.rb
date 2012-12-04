require_relative 'game_turn.rb'

class Game

	attr_reader :title

	def initialize(title)
		@title = title
		@players = Array.new
	end

	def add_player(new_player)
		@players.push(new_player);
	end

	def play(rounds)
		puts "There are #{@players.size} players in #{@title}:"  
	    @players.each do |player|
	      puts player.say_hello
	    end

	    puts "\n\r"

		1.upto(rounds) do |round|
      		puts "\nRound #{round}: "
      		@players.each do |player|
        	GameTurn.take_turn(player)
      	end
      end
	end

end
class Game

	def initialize(title)
		@title = title.capitalize
		@players = []
		@health = []
	end

	def new_player(name, health = 100)
		@players << name
		@health << health
	end

	def player_info(array_no)
		puts "I am #{@players[array_no]} with a health of #{@health[array_no]}%."
	end

	attr_reader :title
	attr_accessor :players, :health

	def blam(array_no)
		@health[array_no] -= 10
		puts "#{@players[array_no]} has just been blammed, his health is now #{@health[array_no]}%"
	end

end

new_game = Game.new('Dungeons & Dragons')
new_game.new_player('Aaron')
new_game.player_info(0)
new_game.new_player('James')
new_game.player_info(1)

new_game.blam(1)
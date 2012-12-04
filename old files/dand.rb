require_relative 'game_turn.rb'

class Player
	attr_reader :health
	attr_accessor :name

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health

		info = "#{name.capitalize}'s health is ".ljust(30,'.')
		puts "#{info} #{health}%"
	end

	def say_hello
		puts "I'm #{@name} and my health is #{@health}%"
	end

	GameTurn.take_turn
	# def blam
	# 	@health -= 10
	# 	puts "#{@name} has just been blammed, his health is now #{@health}%"
	# end

	# def w00t
	# 	@health += 15

	# 	if @health >= 100
	# 		@health = 100
	# 	end

	# 	puts "#{@name} has just been w00ted, his health is now #{@health}%"
	# end

	def score
		@score = @health + @name.length
	end
end


player_1 = Player.new("aaron",80)
player_2 = Player.new("sam", 50)
player_3 = Player.new("dave")

players = [player_1,player_2,player_3]



# puts "\n"
# player_1.say_hello
# player_2.say_hello
# player_3.say_hello
# puts "\n"
# player_1.blam
# player_2.w00t
# player_3.w00t
# puts "\n"
# puts "#{player_1.name}'s health is #{player_1.health}%."
# puts player_1.name = "Aragon"
# puts "I'm #{player_1.name}, my health is #{player_1.health} and my score is #{player_1.score} \n\r"


# players_arr = [player_1,player_2,player_3]

# puts "There are #{players_arr.size} players."

# players_arr.each do | player |
# 	puts "\tI'm #{player.name}, my health is #{player.health} and my score is #{player.score}"
# end

# puts "\n\rBelow are shows the health statuses of each player."

# players_arr.each do | player |
# 	puts "\t#{player.name}'s health is #{player.health}%."
# end

# puts "\n\rTime to fight!"

# players_arr.each do | player |
# 	player.blam
# end

# puts "\n\rNew Player!"

# players_arr << Player.new("lorek",75)

# players_arr.each do | player |
# 	puts "\t #{player.name}"
# end

# puts "\n\rRound 2!"

# count = 0

# players_arr.each do | player |
# 	if count%2==0
# 		player.blam
# 		count+=1
# 	else
# 		player.w00t
# 		count+=1
# 	end
# end


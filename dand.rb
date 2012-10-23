class Player	
	def initialize(name, health=100)
		@name = name.capitalize
		@health = health

		info = "#{name.capitalize}'s health is ".ljust(30,'.')
		puts "#{info} #{health}%"
	end

	def say_hello
		puts "I'm #{@name} and my health is #{@health}%"
	end

	def blam
		@health -= 10
		puts "#{@name} has just been blammed, his health is now #{@health}%"
	end

	def w00t
		@health += 15

		if @health >= 100
			@health = 100
		end

		puts "#{@name} has just been w00ted, his health is now #{@health}%"
	end

end


player_1 = Player.new("aaron",80)
player_2 = Player.new("sam", 50)
player_3 = Player.new("dave")
puts "\n"
player_1.say_hello
player_2.say_hello
player_3.say_hello
puts "\n"
player_1.blam
player_2.w00t
player_3.w00t
puts "\n"
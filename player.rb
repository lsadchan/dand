class Player

	attr_reader :health
	attr_accessor :name

	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
	end

	def say_hello
		puts = "#{@name}'s health is #{@health}%."
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

	def score
		@score = @health + @name.length
	end

	def to_s
    	"I'm #{@name} health = #{@health}% and my score = #{score}."
  	end

end
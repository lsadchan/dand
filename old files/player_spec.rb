require_relative 'dand'

describe 'Player' do

	it "has a capitalized name" do
		player = Player.new("aaron", 100)
		player.name.should == "Aaron"
	end

	it "has an initial health" do
		player = Player.new("aaron")
		player.health.should == 100
	end

	it "has a string representation" do
		player = Player.new("aaron")
		player.say_hello.should == player.say_hello.t_soz
	end

	it "computes a score as the sum of its health and length of name" do
		player = Player.new("aaron")
		player.score.should = player.health + player.name.length
	end

	it "increases health by 15 when w00ted"

	it "decreases health by 10 when blammed"

end
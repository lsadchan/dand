require_relative 'game_turn.rb'

player_1 = Player.new("aaron",80)
player_2 = Player.new("sam", 50)
player_3 = Player.new("dave")

dungeons = Game.new("Dungeons & Dragons")

dungeons.add_player(player_1)
dungeons.add_player(player_2)
dungeons.add_player(player_3)

dungeons.play(3);



# players.each do |p|
# 	puts p.health
# end
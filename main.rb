require './announcer.rb'
require './player.rb'
require './game.rb'

p1 = Player.new('Player 1')
p2 = Player.new('Player 2')
announcer = Announcer.new
game = Game.new(p1, p2, announcer)
game.start
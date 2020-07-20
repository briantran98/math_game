class Game
	attr_accessor :current_player, :game_over
	attr_reader :announcer, :players
	def initialize(p1, p2, announcer)
		@players = [p1, p2]
		@current_player = p1
		@announcer = announcer
		self.game_over = false
	end

	def start
		count = 0
		while !game_over do
			#If return from announcer.question is false take life away from current player
			if (announcer.question(self.current_player.name))
				self.current_player.lose_life
			end
			announcer.score(players[0].lives, players[1].lives)
			won?
			change_current_player
		end
		announcer.end
	end

	private 

	def change_current_player
		if (current_player == players[0])
			self.current_player = players[1]
		else
			self.current_player = players[0]
		end
	end

	def won?
		if(current_player.lives == 0)
			announcer.winner(current_player == players[0] ? players[1] : players[0])
			self.game_over = true
		end
	end
end
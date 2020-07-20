class Player
	attr_accessor :lives
	attr_reader
	def initialize(name)
		@name = name
		self.lives = 3
	end

	def lose_life
		self.lives -= 1
	end
end
class Announcer

	# Outputs to the console the simple math question
	# If answered correctly YES output if incorrect then NO output
	# Return true if answer is incorrect
	def question(player)
		answer = self.answer
		puts "#{player}: What does #{answer["num1"]} plus #{answer["num2"]} equal?"
		print "> "
		response = $stdin.gets.chomp.to_i
		if response == answer["answer"]
			puts "YES! You are correct."
		else
			puts "Seriously? No!"
			true
		end
	end

	# Outputs score and new turn 
	def score(p1_lives, p2_lives)
		puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
		puts "----- NEW TURN -----"
	end

	# Output winner message
	def winner(player)
		puts "#{player.name} wins with a score of #{player.lives}/3"
	end

	# Output the game over screen
	def end
		puts "----- GAME OVER -----"
		puts "Good bye!"
	end

	private

	# Generates random number and returns a hash
	def answer
		num1 = rand(1..20)
		num2 = rand(1..20)
		{'num1' => num1, 'num2' => num2, 'answer' => num1 + num2}
	end
end
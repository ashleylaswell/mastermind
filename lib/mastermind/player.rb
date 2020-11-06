module Mastermind
	class Player
		attr_reader :name, :player_array, :guess
		
		def initialize(input)
			@name = input.fetch(:name)
			@player_array = Array.new
			@guess = 0
		end

		def get_player_array(guess)
			while guess < 4
				color = gets.chomp
				player_array.push color
				guess += 1
			end
			player_array
		end

		def clear_player_array
			player_array.clear
		end
	end
end

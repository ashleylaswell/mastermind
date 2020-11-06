module Mastermind
	class Player
		attr_reader :name, :player_array
		
		def initialize(input)
			@name = input.fetch(:name)
			@player_array = Array.new
		end

		def get_player_array()
			guess = 0
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

module Mastermind
	class Player
		attr_reader :player_array
		def initialize(input = {})
			@player_array = input.fetch(:player_array, get_player_array)
		end

		def get_player_array()
			player_array = Array.new()
			guess = 0
			while guess < 4
				color = gets.chomp
				player_array.push color
				guess += 1
			end
			player_array
		end
	end
end

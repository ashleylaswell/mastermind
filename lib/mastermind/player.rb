module Mastermind
	class Player
		attr_reader :player_array, :name
		def initialize(input)
			@player_array = input.fetch(:player_array)
			@name = input.fetch(:name)
		end
	end
end

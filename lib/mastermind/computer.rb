module Mastermind
	class Computer
		attr_reader :computer_array
		def initialize(input = {})
			@computer_array = input.fetch(:computer_array, computer_play)
		end

		def computer_colors
			color_array = ["red", "orange", "yellow", "green", "blue", "pink"]
			randomize_colors = color_array.sort { rand() -0.5 }
			randomize_colors[0..3]
		end
	end
end




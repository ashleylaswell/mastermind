module Mastermind
	class Board
		attr_reader :grid, :str
		attr_accessor :player_array
		def initialize(input = {})
			@grid = input.fetch(:grid, default_grid)
			@player_array = Array.new(4)
		end

		def get_cell(x, y)
			grid[x][y]
		end

		def set_cell(x, y, value)
			get_cell(x, y).value = value
		end

		def set_player_array()

		end

		def game_over
			return :winner if winner?
			return :out_of_turns if out_of_turns?
			false
		end

		def formatted_grid
			grid.each do |row|
				puts row.map { |cell| cell.value.empty? ? "_" : cell.value }.join(" ")
			end
		end

		private

		def default_grid
			Array.new(10) { Array.new(4) { Cell.new } }
		end

		def winner?
			computer_array == player_array
		end
	end
end

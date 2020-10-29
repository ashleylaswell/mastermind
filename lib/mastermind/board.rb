module Mastermind
	class Board
		attr_reader :grid
		def initialize(input = {})
			@grid = input.fetch(:grid, default_grid)
		end

		def get_cell(x, y)
			grid[x][y]
		end

		def set_cell(x, y, value)
			get_cell(x, y).value = value
		end

		def game_over
			return :winner if winner?
			return :lost if lost?
			false
		end

		private

		def default_grid
			Array.new(10) { Array.new(4) { Cell.new } }
		end
	end
end

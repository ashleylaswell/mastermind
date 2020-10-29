module Mastermind
	class Board
		attr_reader :grid
		def initialize(input = {})
			@grid = input.fetch(:grid, default_grid)
		end

		def get_cell(x, y)
			grid[x][y]
		end

		private

		def default_grid
			Array.new(10) { Array.new(4) { Cell.new } }
		end
	end
end

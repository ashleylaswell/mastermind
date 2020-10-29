require "spec_helper"

module Mastermind
	describe Board do
		context "#initialize" do
			it "initializes the board with a grid" do
				expect { Board.new(grid: "grid" ) }.to_not raise_error
			end
			it "sets the row size to 10 by default" do
				board = Board.new
				expect(board.grid.size).to eq(10)
			end
			it "sets the column size to 4 by default" do
				board = Board.new
				board.grid.each do |row|
					expect(row.size).to eq(4)
				end
			end	
		end
	end
end

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
		context "#grid" do
			it "returns the grid" do
				board = Board.new(grid: "blah")
				expect(board.grid).to eq "blah"
			end
		end
		context "#get_cell" do
			it "returns the cell based on the coordinate" do
				grid = [
					["", "red", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""]]
				board = Board.new(grid: grid)
				expect(board.get_cell(0, 1)).to eq "red"
			end
		end
		context "#set_cell" do
			it "updates the value of the cell at specified coordinate" do
				Color = Struct.new(:value)
				grid = [
					["", Color.new("red"), "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""], 
					["", "", "", ""]]
				board = Board.new(grid: grid)
				board.set_cell(0, 1, "orange")
				expect(board.get_cell(0, 1).value).to eq "orange"
			end
		end

		context "#game_over" do
			it "returns :winner if winner? is true" do
				board = Board.new
				allow(board).to receive(:winner?) { true }
				expect(board.game_over).to eq :winner
			end
			it "returns :out_of_turns if winner is false and if out_of_turns? is true" do
				board = Board.new
				allow(board).to receive(:winner?) { false }
				allow(board).to receive(:out_of_turns?) { true }
				expect(board.game_over).to eq :out_of_turns
			end
			it "returns :winner if winner? is true" do
				board = Board.new
				allow(board).to receive(:winner?) { false }
				allow(board).to receive(:out_of_turns?) { false }
				expect(board.game_over).to be_falsey
			end
		end
	end
end

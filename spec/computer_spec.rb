require "spec_helper"

module Mastermind
	describe Computer do
		context "#initialize" do
			it "initializes computer with an array" do
				expect { Computer.new(computer_array: "computer_array") }.to_not raise_error
			end
			it "sets the array to have 4 elements" do
				computer = Computer.new
				expect(computer.computer_array.size).to eq(4)
			end
		end
	end
end	

require "spec_helper"

module Mastermind
	describe Computer do
		context "#initialize" do
			it "raises an exception when initializedd with {}" do
				expect { Computer.new({}) }.to raise_error
			end
			it "does not raise an exception with valid input hash" do
				input = { computer_array: ["red", "orange", "yellow", "blue"], name: "computer" }
				expect { Computer.new(input) }.to_not raise_error
			end
		end
	end
end	

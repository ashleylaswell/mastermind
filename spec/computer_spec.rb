require "spec_helper"

module Mastermind
	describe Computer do
		context "#initialize" do
			it "raises an exception when initializedd with {}" do
				expect { Computer.new({}) }.to raise_error
			end
		end
	end
end	

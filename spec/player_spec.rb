require "spec_helper"

module Mastermind
	describe Player do
		context "#initialize" do
			it "raises an exception when initialized with {}" do
				expect { Player.new({}) }.to raise_error
			end
			it "does not raise an error when initialized with a valid input hash" do
				input = { player_array: ["red", "orange", "yellow", "green"], name: "ashley" }
				expect { Player.new(input) }.to_not raise_error
			end
		end
		context "#player_array" do
			it "returns the player array" do
				input = { player_array: ["red", "orange", "yellow", "green"], name: "ashley" }
				player = Player.new(input)
				expect(player.player_array).to eq ["red", "orange", "yellow", "green"]
			end
		end
	end
end

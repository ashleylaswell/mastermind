module Mastermind
	class Game
		attr_reader :players, :human, :computer, :player_array, :turn
		
		def initialize(players, board = Board.new)
			@players = :players
			@board = board
			@human, @computer = players
			@turn = 0
		end

		def solicit_move
			puts "#{human.name}: Enter your moves:"
		end

		def print_computer_array
			puts computer.computer_array
		end

		def print_player_array
			puts human.player_array
		end

		def winner?
			human.player_array = computer.computer_array
		end

		def play(turn)
			print_computer_array
			while turn < 10
				solicit_move
				human.get_player_array
				if human.player_array == computer.computer_array
					puts "you win"
					return
				else
					puts "try again"
					human.clear_player_array
				end
				turn += 1
			end
		end
	end
end

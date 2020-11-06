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

		def turns_left?
			turn <= 10
		end

		def loser?
			turn == 10 and winner? == false
		end

		def correct_positions
			computer_array = computer.computer_array
			player_array = human.player_array
			correct_position = 0
			wrong_position = 0

			i = 0
			while i < computer_array.length do
				while i < player_array.length do
					if computer_array[i] == player_array[i]
						correct_position += 1
					elsif computer_array.include?(player_array[i])
						wrong_position += 1
					end
					i += 1
				end
				i += 1
			end
			puts "There are #{correct_position} correct colors in the correct position"
			puts "There are #{wrong_position} correct colors in the wrong position"
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

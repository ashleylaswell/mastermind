module TicTacToe
	class Game
		attr_reader :players, :board, :computer, :human
		def initialize(players, board = Board.new)
			@players = players
			@board = board
			@computer = computer
			@human = human
		end

		def solicit_move
			"#{human.name}: Enter a color and press enter. Do this 4 times."
		end

		def get_move(human_move = gets.chomp)
			human_move_to_array(human_move)
		end

		def game_over_message
			return "You won!" if board.game_over == :winner
			return "you lost :(" if board.game_over == :out_of_turns
		end

		def play
			puts "Your choices of colors are red(1), orange(2), yellow(3), green(4), blue(5), and pink(6)"
		end

		private

		def human_move_to_array(human_move)
			mapping = {
				"1" => "red",
				"2" => "orange",
				"3" => "yellow",
				"4" => "green",
				"5" => "blue",
				"6" => "pink"
			}
			mapping[human_move]
		end
	end
end

require_relative "../lib/mastermind.rb"

puts "Welcome to Mastermind"
puts "Mastermind is a game with a codemaker and a codebreaker. The computer is the codemaker and will pick 4 colors in a specific order. You will guess the colors in order and after your 4 guesses, the computer will tell you how many colors you got correct and how many are in the correct position."
puts "Enter 4 colors and press enter after each color"
puts "Your choices of colors are red, orange, yellow, green, blue, and pink."

ashley = Mastermind::Player.new({name: "ashley"})
computer = Mastermind::Computer.new

players = [ashley, computer]
game = Mastermind::Game.new(players)
game.play(game.turn)

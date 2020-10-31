require_relative "../lib/mastermind.rb"

puts "Welcome to Mastermind"

ashley = Mastermind::Player.new
computer = Mastermind::Computer.new

players = [ashley, computer]
Mastermind::Game.new(players).play

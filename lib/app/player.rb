require 'show'
require 'board'

class Player
  attr_accessor :name, :avatar

  # avatar represente le player avec un X ou un O
  def initialize(avatar)
    puts "nom du joueur :"
    @name = gets.chomp
    @avatar = avatar

  end
end
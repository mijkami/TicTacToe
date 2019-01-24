# Permet d'éviter de faire un require dans chaque fichier
# Il suffit que le Gemfile soit bien complété
require 'bundler'
Bundler.require

#plus besoin de préciser le path exact
#$:.unshift File.expand_path("./../lib/app", __FILE__)
$:.unshift File.expand_path("./../lib/app", __FILE__)

require 'player'
require 'board'
require 'boardcase'
require 'show'
require 'game'


game = Game.new
game.turns
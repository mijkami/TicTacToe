require 'pry'
require 'player'
require 'board'

class Game
    attr_accessor :turn_number

    def initialize

        @turn_number = 1


        @@player1 = Player.new("X")
        @@player2 = Player.new("O")

        @@board = Board.new



    end

    def turns
       @@board.update_array(@@board.board_array)
       current_player = @@player1

        @@show  = Show.new

        while !@@board.is_winning_board?
            @@board.update_array(@@board.board_array)
            
            @@board.play_turn(current_player.avatar)
            #binding.pry
            @turn_number += 1
            if current_player.avatar == 'X'
              current_player = @@player2
            else
                current_player = @@player1
            end
        end


        current_player = @@player1
        while true
            @@board.play_turn(current_player.avatar)
            #binding.pry
            @turn_number += 1
            if current_player.avatar == 'X'
              current_player =  @@player2
            else
                current_player = @@player1
            end

        end
        
    end


end
require 'boardcase'
require 'show'

class Board
  attr_accessor :board_array
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize
    @board_array = [BoardCase.new(0),BoardCase.new(1),BoardCase.new(2),
                    BoardCase.new(3),BoardCase.new(4),BoardCase.new(5),
                    BoardCase.new(6),BoardCase.new(7),BoardCase.new(8)]

    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end


  def play_turn(avatar)

    case_choice = ""
    
    while !case_choice.to_i.between?(1,9) do
      puts "Choisis une case : "
        case_choice = gets.chomp.to_i
      end
        case_choice = (case_choice - 1)

      @board_array[case_choice].change_value(avatar)
      Show.show_board(@board_array)


      #TO DO : une méthode qui :
      #1) demande au bon joueur ce qu'il souhaite faire
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    end

    def update_array(array)
      array = @board_array
    end

    def is_winning_board?
      # rows
      return true if @board_array[0].value == ("X") && @board_array[1].value == ("X") && @board_array[2].value == ("X")
      return true if @board_array[3].value == ("X") && @board_array[4].value == ("X") && @board_array[5].value == ("X")
      return true if @board_array[6].value == ("X") && @board_array[7].value == ("X") && @board_array[8].value == ("X")
      return true if @board_array[0].value == ("O") && @board_array[1].value == ("O") && @board_array[2].value == ("O")
      return true if @board_array[3].value == ("O") && @board_array[4].value == ("O") && @board_array[5].value == ("O")
      return true if @board_array[6].value == ("O") && @board_array[7].value == ("O") && @board_array[8].value == ("O")


      # columns
      return true if @board_array[0].value == ("X") && @board_array[3].value == ("X") && @board_array[6].value == ("X")
      return true if @board_array[1].value == ("X") && @board_array[4].value == ("X") && @board_array[7].value == ("X")
      return true if @board_array[2].value == ("X") && @board_array[5].value == ("X") && @board_array[8].value == ("X")
      return true if @board_array[0].value == ("O") && @board_array[3].value == ("O") && @board_array[6].value == ("O")
      return true if @board_array[1].value == ("O") && @board_array[4].value == ("O") && @board_array[7].value == ("O")
      return true if @board_array[2].value == ("O") && @board_array[5].value == ("O") && @board_array[8].value == ("O")


      # diagonals
      return true if @board_array[0].value == ("X") && @board_array[4].value == ("X") && @board_array[8].value == ("X")
      return true if @board_array[2].value == ("X") && @board_array[4].value == ("X") && @board_array[6].value == ("X")
      return true if @board_array[0].value == ("O") && @board_array[4].value == ("O") && @board_array[8].value == ("O")
      return true if @board_array[2].value == ("O") && @board_array[4].value == ("O") && @board_array[6].value == ("O")

      false
    end
    def victory?
      #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    end

  end
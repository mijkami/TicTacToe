class BoardCase
  attr_accessor :value, :board_case
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case

  



  def initialize(value)
    @value = " "

  end

  def change_value(value)
    @value = value
  end

  def get_value
    return @value
  end
  
end
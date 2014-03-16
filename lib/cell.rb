class Cell

  attr_accessor :value

  def initalize
    @value = nil
  end

  def unsolved
    @value = 0
  end

  def filled_out?
    @value != 0
  end

  def options(neighbours)
    cell_options = (1..9).to_a - neighbours
    @value = cell_options if cell_options.count == 1
  end
  
end
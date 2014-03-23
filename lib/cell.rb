class Cell

  attr_accessor :value, :neighbours

  def initialize(cell_value, neighbours)
    @value = cell_value
    @neighbours = neighbours
  end

  def unsolved?
    @value == 0 
  end

  def filled_out?
    @value != 0
  end

  def options
    (1..9).to_a - @neighbours
  end

  def solve
    @value = options.first if unsolved? && options.count == 1
  end
  
end
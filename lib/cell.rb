class Cell

  attr_accessor :value, :neighbours

  def initialize(cell_index, neighbours)
    @value = cell_index
    @neighbours = neighbours
  end

  def unsolved?
    @value == 0
  end

  def filled_out?
    @value != 0
  end

  def options
    @cell_options = (1..9).to_a - @neighbours
  end

  def solve
    @value = self.options if self.unsolved?
  end
  
end
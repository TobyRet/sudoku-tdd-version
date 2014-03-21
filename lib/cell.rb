class Cell

  attr_accessor :value, :neighbours

  def initialize(cell_value, neighbours)
    @value = cell_value
    @neighbours = neighbours
  end

  def unsolved?
    @value == 0 || @value.is_a?(Array)
  end

  def filled_out?
    @value != 0
  end

  def options
    cell_options = (1..9).to_a - @neighbours
    return cell_options.flatten if cell_options.length == 1
  end

  def solve
    if self.unsolved?
      @value = options 
    else
      @value = 0
    end
  end
  
end
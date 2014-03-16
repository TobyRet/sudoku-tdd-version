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
    (1..9).to_a - neighbours
  end
  
end
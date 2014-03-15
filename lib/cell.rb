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

  # write method with candidates if filled_out? returns false
  # def candidate; end
  
end
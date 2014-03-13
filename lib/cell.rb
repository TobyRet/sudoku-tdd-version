class Cell

  attr_accessor :value

  def initialize
    @value = nil
  end

  def filled_out?
    @value != 0
  end


end
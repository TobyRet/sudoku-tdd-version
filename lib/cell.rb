class Cell

  attr_accessor :value

  def initialize #(neighbors)
    @value = nil
    # @neighbors = neighbors
  end

  def filled_out?
    @value != 0
  end

  # write method with candidates if filled_out? returns false
  # def candidate; end

end
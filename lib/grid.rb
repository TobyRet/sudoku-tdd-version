class Grid

  attr_accessor :cells

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
  end 

  def solved?(cell_number)
    @cells[cell_number - 1] == 0 ? false : true
  end
end
class Grid

  attr_accessor :cells

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
  end 

  def solved?(cell_number)
    @cells[cell_number - 1] == 0 ? false : true
  end

  def row_neighbours(cell_index)
    row = cell_index / 9
    a = (0 + (row * 9)) # defines startpoint for row
    b = (8 + (row * 9)) # defines end point for row
    result = []
    result << cells[a..b] 
    result.flatten!
    result.delete_at(cell_index - (row * 9))
    result
  end

end



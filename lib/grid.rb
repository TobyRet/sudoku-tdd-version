class Grid

  attr_accessor :cells

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
  end 

  def cell_solved?(cell_number)
    @cells[cell_number - 1] == 0 ? false : true
  end

  def all_cells_solved?
    @cells.all? { |cell| cell != 0 }
  end

  # Need a solve method at some point
  # def solve; end

end
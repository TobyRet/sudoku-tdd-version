class Grid

  attr_accessor :cells, :board

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
  end 

  def cell_solved?(cell_index)
    @cells[cell_index] == 0 ? false : true
  end

  def all_cells_solved?
    @cells.all? { |cell| cell != 0 }
  end

  #def rows
  #  @cells.each_slice(9).to_a 
  #end

  def row_neighbours(cell_index)
    rows = @cells.each_slice(9).to_a 
    row_index = cell_index / 9 
    @row_cells = rows[row_index]
    @row_cells.delete_at(cell_index % 9)
    @row_cells
  end

  # Need a solve method at some point
  # def solve; end

  #def row_neighbours(cell_index) 
  # row_index = cell_index / 9
  # a = row_index * 9 # defines startpoint for a row
  # b =  a + 8  # defines end point for a row
  # neighbours = []
  # neighbours << @cells[a..b] 
  # neighbours.flatten!
  # neighbours.delete_at(cell_index - a)
  # neighbours
  #end

end


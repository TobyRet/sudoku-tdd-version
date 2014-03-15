class Grid

  attr_accessor :cells, :row_cells, :column_cells

  def initialize(puzzle)
    @cells = puzzle.chars.map { |s| s.to_i }
  end 

  def cell_solved?(cell_index)
    @cells[cell_index] == 0 ? false : true
  end

  def all_cells_solved?
    @cells.all? { |cell| cell != 0 }
  end

  def rows
    row_cells = @cells.each_slice(9).to_a 
  end

  def columns
    column_cells = rows.transpose
  end

  def boxes
    box_index = [0,3,6,27,30,33,54,57,60]
    boxes_cells = []
    box_index.each { |index| boxes_cells << [index, index + 1, index + 2, index + 9, index + 10, index + 11, index + 18, index + 19, index + 20]}
  end

  # Need a solve method at some point
  # def solve; end

  # calculate position rows
    #row_index = cell_index / 9 
    #row_cells = rows[row_index]
    #row_cells.delete_at(cell_index % 9)
    #row_cells

  # calculate position columns
    #column_index = cell_index / 9 
    #column_cells = columns[column_index]
    #column_cells.delete_at(cell_index % 9)
    #column_cells
#
end


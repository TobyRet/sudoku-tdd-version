class Grid

  attr_accessor :cells

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
    box_first_index = [0,3,6,27,30,33,54,57,60]
    box_indexes = []
    box_first_index.each { |index| box_indexes << [index, index + 1, index + 2, index + 9, index + 10, index + 11, index + 18, index + 19, index + 20]}
    box_indexes.map! do |row| 
      row.map do |index|
        index = cells[index] 
      end
    end
  end

  def neighbours(cell_index)
    neighbour_list = [self.rows[cell_index], self.columns[cell_index], self.boxes[cell_index]].flatten
  end

end


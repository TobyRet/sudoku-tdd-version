require_relative 'cell.rb'

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
    @cells.each_slice(9).to_a     
  end

  def columns
    rows.transpose
  end

  def boxes
    box_first_index = [0,3,6,27,30,33,54,57,60]
    box_indexes = box_first_index.map { |index|[index, index + 1, index + 2, index + 9, index + 10, index + 11, index + 18, index + 19, index + 20]}
    box_indexes.map { |box| box.map {|index| cells[index]} }    
  end

  def neighbours(cell_index)
    p self.boxes[cell_index / 9]  
    row = cell_index / 9
    column = cell_index % 9
    box = (3 * (row / 3)) + (column / 3)

    self.rows[row] + self.columns[column] + self.boxes[box]   
  end

  #def solve
  #  outstanding_before, looping = SIZE, false
  #  while !all_cells_solved? && !looping
  #    try_to_solve # ask each cell to solve itself
  #    outstanding = @cells.count {|c| c.all_cells_solved? }
  #    looping = outstanding_before == outstanding       
  #    outstanding_before = outstanding     
  #  end 
  #end

  #def try_to_solve
  #  #### this works #######
  #  cell_neighbours = self.neighbours(36)
  #  cell = Cell.new(@cells[36], cell_neighbours)
  #  puts cell.options
  #  puts cell.solve
  #  puts cell.value
  # 
#
  #  #@cells.each_with_index do |cell_value, cell_index|
  #  #  cell_neighbours = self.neighbours(cell_index)
  #  #  cell = Cell.new(cell_value, cell_neighbours)
  #  #  p cell.solve
  #  #  if cell.unsolved? 
  #  #   @cells[cell_index] = cell.value
  #  #  end
  #  #end
  #  #@cells
  #end

end


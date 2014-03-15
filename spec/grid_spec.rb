require_relative '../lib/grid'

describe Grid do 

  let(:grid) { Grid.new(puzzle) }
  let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }


  context "initialization" do

    it "should have 81 cells" do
      expect(grid.cells.length).to eq(81)
    end

    it "should have an unsolved first cell" do
      expect(grid.cell_solved?(0)).to eq(false)
    end

    it "should have a solved second cell with a value of 1" do
      expect(grid.cell_solved?(1)).to eq(true)
    end

    it "should know if all cells are solved" do
      expect(grid.all_cells_solved?).to eq(false)
    end

  end

  context "neighbouring cells" do

    it "should return a cell's row neighbours" do 
      row_neighbours_0 = [0,1,0,0,3,0,0,2]
      expect(grid.row_neighbours(2)).to eq(row_neighbours_0)
    end

    it "should return a cell's column neighbours" do
      column_neighbours_0 = [0,7,9,0,0,0,6,3]
      expect(grid.column_neighbours(9)).to eq(column_neighbours_0)
    end

  end
end
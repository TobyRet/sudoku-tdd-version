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

    xit "should be able to arrange cells into nine rows" do
      expect(grid.rows.count).to eq(9)
      expect(grid.rows[0].count).to eq(9)
    end 

  end

  context "neighbouring cells" do

    it "should know return a cell's row neighbours" do 
      row_neighbours_0 = [0, 1, 0, 0, 3, 0, 0, 2]
      expect(grid.row_neighbours(2)).to eq(row_neighbours_0)
    end


    xit "should know who a cell's row neighbours are" do
      row_neighbours_0 = [0,1,0,0,3,0,0,2]
      row_neighbours_1 = [0,0,0,1,0,9,0,6]
      row_neighbours_8 = [0,3,7,2,0,4,6,0]
      expect(grid.row_neighbours(2)).to eq(row_neighbours_0)
      expect(grid.row_neighbours(13)).to eq(row_neighbours_1)
      expect(grid.row_neighbours(79)).to eq(row_neighbours_8)
    end

  end
end
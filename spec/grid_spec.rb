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

    it "should organise cells into rows" do 
      row_1 = [0, 1, 5, 0, 0, 3, 0, 0, 2]
      expect(grid.rows[0]).to eq(row_1)
      expect(grid.rows.count).to eq(9)
    end

    it "should organise cells into columns" do
      column_0 = [0, 0, 2, 4, 5, 0, 9, 8, 0]
      expect(grid.columns[0]).to eq(column_0)
      expect(grid.columns.count).to eq(9)
    end

    it "should organise cells into boxes" do
      box_0 = [0, 1, 5, 0, 0, 0, 2, 7, 0]
      expect(grid.boxes[0]).to eq(box_0)
      expect(grid.boxes.count).to eq(9)
    end

    it "should be able to list all neighbours for a cell" do
      neighbours_0 = [0, 1, 5, 0, 0, 3, 0, 0, 2, 0, 0, 2, 4, 5, 0, 9, 8, 0, 0, 1, 5, 0, 0, 0, 2, 7, 0]
      expect(grid.neighbours(0)).to eq(neighbours_0)
    end    
  end
end
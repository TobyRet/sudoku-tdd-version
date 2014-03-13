require_relative '../lib/grid'

describe Grid do 

  let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
  let(:grid) { Grid.new(puzzle) }

  context "initialization" do

    it "should have 81 cells" do
      expect(grid.cells.length).to eq(81)
    end

    it "should have an unsolved first cell" do
      expect(grid.solved?(1)).to eq(false)
    end

    it "should have a solved second cell with a value of 1" do
      expect(grid.solved?(2)).to eq(true)
    end

  end

  context "neighbouring cells" do

    it "should know who a cell's row neighbours are" do
      row1 = [0,1,0,0,3,0,0,2]
      expect(grid.row_neighbours(2)).to eq(row1)
    end


  end

end
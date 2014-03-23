require 'cell'

describe 'Cell' do

  context "Initialization" do

    let (:cell) { Cell.new(0, neighbours) }
    let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
    let(:grid) { Grid.new(puzzle) }
    let(:neighbours) { grid.neighbours(0) }

  
    it "should have a value when initialised" do
      expect(cell.value).to eq(0)
    end

    it "can have a status of unsolved" do
      cell.value = 0
      expect(cell.unsolved?).to eq(true)
    end

    it "can have a status of solved" do
      expect(cell.filled_out?).to eq(false)
    end

    it "should know if it has a solved value" do
      cell.value = 2
      expect(cell.filled_out?).to eq(true)
    end

    it "should identify options for cell" do
      expect(cell.options).to eq([6])
    end

    it "should solve the cell if there's only one possible candidate" do
      expect(cell.solve).to eq([6])
    end

  end

end
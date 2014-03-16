require 'cell'

describe 'Cell' do

  context "Initialization" do

    let (:cell) { Cell.new }
    let(:grid) { Grid.new(puzzle) }
    let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }

  
    it "should have a nil value when initialised" do
      expect(cell.value).to eq(nil)
    end

    it "can have a status of unsolved" do
      expect(cell.unsolved).to eq(0)
    end

    it "can have a status of solved" do
      expect(cell.unsolved).to eq(0)
    end

    it "should know if it has an unsolved value" do
      cell.unsolved
      expect(cell.filled_out?).to eq(false)
    end

    it "should know if it has a solved value" do
      cell.value = 2
      expect(cell.filled_out?).to eq(true)
    end

    it "should identify options for cell" do
      neighbours = grid.neighbours(0) # => [0, 1, 5, 0, 0, 3, 0, 0, 2, 0, 0, 2, 4, 5, 0, 9, 8, 0, 0, 1, 5, 0, 0, 0, 2, 7, 0]
      expect(cell.options(neighbours)).to eq([6])
      expect(cell.value).to eq([6])
    end

  end

end
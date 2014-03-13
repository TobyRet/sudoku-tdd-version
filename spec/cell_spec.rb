require 'cell'

describe 'Cell' do

  let (:cell) { Cell.new }

  context "Initialization" do
  
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

  end

end
require 'cell'

describe 'Cell' do

  let (:cell) { Cell.new }

  context "Initialization" do
  
    it "should have a nil value when initialised" do
      expect(cell.value).to eq(nil)
    end

  end

end
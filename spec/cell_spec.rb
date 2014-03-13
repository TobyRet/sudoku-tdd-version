require 'cell'

describe Cell do 

  let (:cell) { Cell.new }

  it "should have a value of nil when initialized" do
    expect(cell.value).to eq(nil)
  end

  it "should return true if it's filled out" do
    cell.value = 2
    expect(cell.filled_out?).to eq(true)
  end

  it "should return false if it isn't filled out" do
    cell.value = 0
    expect(cell.filled_out?).to eq(false)
  end
end
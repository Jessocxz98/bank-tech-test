require './lib/money'

describe Money do
  it "should have a balance of 0" do
    expect(subject.balance).to eq(0)
  end
end

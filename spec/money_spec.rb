require './lib/money'

describe Money do
  it "should have a balance of 0" do
    expect(subject.balance).to eq(0)
  end
  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it "should add to balance" do
      expect{ subject.deposit 1 }.to change { subject.balance }.by(1)
    end
  end
end

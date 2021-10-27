require './lib/account'

describe Account do
  it "should have a balance of 0" do
    expect(subject.balance).to eq(0)
  end
  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }
    it "should add to balance" do
      expect{ subject.deposit 1 }.to change { subject.balance }.by(1)
    end
  end
  describe '#withdraw' do
    it { is_expected.to respond_to(:withdraw).with(1).argument }
    it "should subtract from balance" do
      expect{ subject.withdraw 1 }.to change { subject.balance }.by(-1)
    end
  end
  describe '#statement' do
    it "should store each transaction in an array" do
      expect(subject.statement).to be_an_instance_of(Array)
    end
    it "should store each transaction" do
      account = Account.new
      account.deposit(20)
      test_date = account.date
      expect(account.statement).to match_array([["#{test_date}", "+20", "20"]])
    end
  end
end

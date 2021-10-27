require './lib/account'
require './lib/statement'

describe Statement do
  describe '#view' do
    it "should print out a bank statement" do
      account = Account.new
      account.deposit(20)
      statement = account.statement
      test_date = account.date
      view_statement = Statement.new
      expect{ view_statement.view(statement) }.to output("||   Date   || Transaction Amount || Balance ||\n||#{test_date}||  +20  ||  20  ||\n").to_stdout
    end
  end
end


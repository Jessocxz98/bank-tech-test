require './lib/account'

class Statement

  def view(statement)
    puts "||   Date   || Transaction Amount || Balance ||"
    statement.each do |date, amount, balance|
    puts "||#{date}||  #{amount}  ||  #{balance}  ||"
    end
  end
end
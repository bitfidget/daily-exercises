
class Luhn
  def initialize(number)
    @number = number
  end

  def checksum
    codes = []
    # reverse the number and split it to single digits, make each vlaue a number and then do with index
    @number.to_s.reverse.split('').map(&:to_i).each_with_index do |n, i|
      # multiply the number by 2 of it's index is odd
      n = n * 2 if i.odd?
      # if the number is now more than 9, subtract 9
      n -= 9 if n > 9
      # add it all to the array
      codes << n
    end
    # add all the numbers in the array together 
    codes.inject(&:+)
  end

  def valid?
    self.checksum % 10 == 0
  end
end

class Fixnum
  def luhn_valid?
    puts Luhn.new(self).valid?
  end
end

puts Luhn.new(2323_2005_7766_3534).valid?
puts Luhn.new(2323_2005_7766_3554).valid?

puts 2323_2005_7766_3554.luhn_valid?
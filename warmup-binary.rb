###############
#joels solution
###############

class Binary
  def initialize(str)
    @binary_string = str
  end

  def to_i
    exponent = 0
    result = 0
    @binary_string.split('').reverse.each do |bit|
      result += (2 ** exponent) if bit == '1'
      exponent += 1
    end
    result
  end
end

b1 = Binary.new('1001')
puts b1.to_i 

b2 = Binary.new('0b110110110110101')
puts b2.to_i 

# irb(main):001:0> 0b1011001
# => 89
# irb(main):002:0> 0b1101
# => 13
# irb(main):003:0> 0b110110110110101
# => 28085

############
#my solution
############

binary = 110110110110101
# split to array
components = binary.to_s.split(//)
# throw and error if not a binary number
raise "not a binary string" unless components.all? { |value| value == '0' || value == '1' }
# iterate through the rest of the digits
sum = 0
components.each do |value|
  sum = (( sum * 2 ) + value.to_i)
end
puts sum



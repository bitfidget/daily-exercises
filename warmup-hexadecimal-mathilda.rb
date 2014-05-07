class Hex
  def initialize(hexstring)
    @hex = hexstring.split('')
  end

  HEX = {
    'a' => 10,
    'b' => 11,
    'c' => 12,
    'd' => 13,
    'e' => 14,
    'f' => 15
  }

  def convert_decimal
    decimal_sum = 0
    if is_valid?
      @hex.reverse.each_with_index do |h, i|
        h = HEX[h] if HEX[h]
        decimal_sum += h.to_i * (16 ** i)
      end
    end
    decimal_sum
  end

  def is_valid?
    @hex.each do |character|
      unless /[A-Fa-f0-9]+/ =~ character
        return false
      end
      return true
    end
  end

end

puts Hex.new("10AF8C").convert_decimal
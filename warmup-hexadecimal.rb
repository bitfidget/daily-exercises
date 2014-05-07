# Hexadecimal
 
# On the web we use hexadecimal to represent colors, i.e. green: 008000, teal: 008080, navy: 000080).
 
# Write a program that will convert a hexadecimal number, 
# represented as a string (i.e. "10af8c"), 
# to it's decimal equivalent using first principles 
# (i.e. no, you may not use built-in ruby libraries or gems to accomplish the conversion).
 
# The program should consider strings specifying an invalid hexadecimal as the value 0.

class Colour
  def initialize(hex)
    components = hex.to_s.split('').to_a.reverse

    total = []
    i = 1

    components.each do |component|
      if %w[a, b, c, d, e, f].include? component.downcase
        case component.downcase
        when 'a'
          component = 10
        when 'b'
          component = 11
        when 'c'
          component = 12
        when 'd'
          component = 13
        when 'e'
          component = 14
        when 'f'
          component = 15
        end
      else
        component = component.to_i
      end
      total << component * i
      i *= 16
    end

    decimal = total.inject(:+)
    puts decimal

  end
end

green = Colour.new('00800F')
white = Colour.new('FFFFFF')
white = Colour.new('FFFF00')
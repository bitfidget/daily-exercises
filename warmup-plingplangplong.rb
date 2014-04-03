# Write a program that converts a number to a string per the following rules:

# If the number contains 3 as a prime factor, output 'Pling'. 
# If the number contains 5 as a prime factor, output 'Plang'. 
# If the number contains 7 as a prime factor, output 'Plong'.

# If the number does not contain 3, 5, or 7 as a prime factor, simply return the string representation of the number itself.

require 'numbers_and_words'

class Raindrops
  def convert(number)
    represent = ''
    if number % 3 == 0
      represent += 'Pling'
    end
    if number % 5 == 0
      represent += 'Plang'
    end
    if number % 7 == 0
      represent += 'Plong'
    end
    if represent == ''
      represent = number.to_i.to_words
    end
    puts represent
    `say '#{represent}'`
  end
end

drops = Raindrops.new.convert(28)
drops = Raindrops.new.convert(1755)
drops = Raindrops.new.convert(34)
drops = Raindrops.new.convert(961987)
drops = Raindrops.new.convert(17430461098673)
drops = Raindrops.new.convert(2398)
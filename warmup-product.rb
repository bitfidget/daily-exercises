# Write a program that, when given a string of digits, can calculate the largest product for a series of 
# consecutive digits of length n.

# For example, for the input '0123456789', the largest product for a series of 3 digits is 504 (7 * 8 * 9), 
# and the largest product for a series of 5 digits is 15120 (5 * 6 * 7 * 8 * 9).

# For the input '73167176531330624919225119674426574742355349194934', the largest product is 23520.

class Numbers
  def initialize(nstring, sample)
    digits = nstring.to_s.split(//)
    possibles = 0
    
    products = []
    

    while (possibles <= (digits.length) - 4) do
      i = 0
      this_possible = []
      while i < sample
        this_possible << (digits[i + possibles].to_i)
        # products << (digits[0 + possibles].to_i * digits[1 + possibles].to_i * digits[2 + possibles].to_i * digits[3 + possibles].to_i * digits[4 + possibles].to_i)
        puts this_possible
        i += 1
      end
      
      products << this_possible.sort.inject(:*)
      possibles += 1
    end
    puts 'this is a product #{products}'
  end
end

wow = Numbers.new(73167176531330624919225119674426574742355349194934, 3)

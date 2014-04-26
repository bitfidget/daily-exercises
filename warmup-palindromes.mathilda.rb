
class Palindrome
  attr_reader :start, :end
  def initialize(range)
    @start = range.first
    @end = range.last
  end

  def find_palindromes
    palindromes_array = []
    (@start..@end).to_a.each do |number1|
      (number1..@end).to_a.each do |number2|
        product = number1 * number2
        palindromes_array << product if is_pallindrome?(product)
      end
    end 
    palindromes_array 
  end

  def is_pallindrome?(product)
    product.to_s == product.to_s.reverse
    # this way errors if product.length is odd
    # digits_array = product.to_s.split('').map(&:to_i)
    # until digits_array.empty?
    #   if digits_array.shift != digits_array.pop
    #     return false
    #   end
    #   return true
    # end
  end

end

puts palindrome_range = Palindrome(1..99)
puts palindrome_range.find_palindromes



class LargestProduct
  def self.calculate(string, n)
    numbers = string.split('').map{|number| number.to_i}
    max_product = 0
    numbers.each_with_index do |number, index|
      numbers[index.n].inject(:*)
      if sum > max_product
        max_prodct = sum
      end
    end
    max_product
  end

end

puts LargestProduct.calculate('0123456789', 3)
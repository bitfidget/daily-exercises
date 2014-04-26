# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

# Write a program that can detect palindrome products in a given range.

class Product
 def initialize(floor, ceiling)
  @floor = floor
  @ceiling = ceiling
 end

 def products
  allValues = (@floor.to_i..@ceiling.to_i).to_a
  allProducts = {}
  allValues.each do | val |
    allValues.each do | multiplier |
      thisProduct = val * multiplier
      allProducts[thisProduct] = []
      allProducts[thisProduct]<<val<<multiplier
    end
  end
  puts allProducts
  isPalindrome?(allProducts)
 end

 def isPalindrome?(hash)
  hash.each do |product, multipliers|
    if product > 10
      numbers = product.to_s.split('').to_a
      if numbers.length.even?
        compare = numbers.to_s.slice('')
        if compare[0].to_s == compare[1].to_s.reverse
          puts product
        end
      end
    end
  end
 end
end



puts bingo = Product.new(0, 10).products
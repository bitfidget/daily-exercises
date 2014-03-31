#given: `"listen"` and `%w(enlists google inlets banana)` the program should return "inlets".

class Anagram
  attr_reader :word, :anagram_array
  def initialize(word, anagram_array)
    @word = word
    @anagram_array = anagram_array
  end

  def anagram_test
    #select method
    #length methos
    #intersection
    @anagram_array.select do |anagram|
      # ths shit way - anagram.length == @word.length && (anagram.split('') & @word.split('')).length == anagram.length
      anagram.split('').sort == @word.split('').sort
    end
  end


end

anagram1 = Anagram.new("listen", ["enlists", "google", "inlets", "banana", "juggle"])

puts anagram1.anagram_test

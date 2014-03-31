#given: `"listen"` and `%w(enlists google inlets banana)` the program should return "inlets".

class Word
  attr_accessor :value

  def anagram(options)
    options.each do |option|
      if option.split(//).sort == value.split(//).sort
        puts "#{option} is a match"
      end
    end
  end

  def more_anagram
    puts value.split(//).sort.permutation.map(&:join)
  end

end

w = "enlists google inlets banana juggle jlggeu".split(' ')

listen = Word.new
listen.value = "guglej"
listen.anagram(w)
listen.more_anagram
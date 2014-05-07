class Crypto
  def initialize(string)
    @string = string
  end

  def normalize_plaintext
    @plaintext = @string.downcase.gsub(/[^a-z ]/, '').strip.delete(' ')
    puts @plaintext
  end

  def size
    @size = @plaintext.split('').to_a.length
    puts @size
  end

  def plaintext_segments
    @segment_size = Math.sqrt(@size).ceil
    puts @segment_size
    @plaintext_segments = @plaintext.split('').to_a.each_slice(@segment_size).to_a
    puts @plaintext_segments
  end

  def ciphertext
    cipher_hash = {}
    @plaintext_segments.each do |segment|
      segment.each_with_index do |letter, i|
        cipher_hash[i] ||= []
        cipher_hash[i] << letter
      end
    end
    puts cipher_hash.values.join('')
  end

end











crypto = Crypto.new("Have a nice day. Feed the dog & chill out!")
crypto.normalize_plaintext
# => "haveanicedayfeedthedogchillout"
crypto.size
# => 36
crypto.plaintext_segments
# => ["havean", "iceday", "feedth", "edogch", "illout"]
crypto.ciphertext
# => "hifei acedl v..."
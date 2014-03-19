require 'pry'

# create a DNA class
# split letters of DNA chain into array
# find total count of each value within DNA
class DNA
  attr_accessor :string
  def initialize (string)
    @string = string
  end

  def nucleotide_counts
    values = {}
    dna_array = @string.split(//)
    dna_array.uniq.each do |nucleotide|
       values[nucleotide] = dna_array.count(nucleotide)
    end
    puts values
  end

  def count(x)
    # if !['A','T','G','C'].include? x 
    if !%w(A T G C).include? x 
      puts "Sorry #{x} is not a nucleotide, silly!"
    else
      value = {}
      dna_array = @string.split(//)
      value[x] = dna_array.count(x)
      puts value
    end
  end

end


s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
dna = DNA.new(s)
dna.nucleotide_counts
dna.count('C')
# => {'A' => 20, 'T' => 21, 'G' => 17, 'C' => 12}
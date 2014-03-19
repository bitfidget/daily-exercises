require 'pry'

# create a DNA class
# split letters of DNA chain into array
# find total count of each value within DNA
class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def count(needle)
    # nucleotide_count = 0
    # nucleotides = @strand.split('')
    # nucleotides.each do |n|
    #   if (needle.upcase == n.upcase)
    #     nucleotide_count += 1 
    #   end
    # end
    # nucleotide_counts
  
    # and of course the 1 line version!!
    @strand.count(needle)

  end

  def nucleotide_counts
    total = {}
    %w(A T C G).each do |needle|
      total[needle] = count(needle)
    end
    puts total
  end

end


s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
dna = DNA.new(s)
dna.nucleotide_counts
dna.count('f')


# => {'A' => 20, 'T' => 21, 'G' => 17, 'C' => 12}
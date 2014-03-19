class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparison_strand)
    point_mutations = @strand.split('').zip(comparison_strand.split('')).select do |letter_pair|
      letter_pair[0] != letter_pair[1]
    end
    point_mutations.count
  end
end

puts dna1 = DNA.new('GAGCCTACTAACGGGGT')
puts dna1.hamming_distance('CATCGTAATGACGGCAT')
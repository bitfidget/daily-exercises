# class Garden
#   def initialize(plants)
#     sill_a = plants.split("\n").first.split('')
#     sill_b = plants.split("\n").last.split('')
#   end

#   def alice
#     plants = kindergarten.index('alice')
#   end

# end

# kindergarten = ['Bob', 'Alice', 'Charlie', 'David', 'Eve', 'Fred', 'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry'].sort!
# kindergarten.each.downcase!

# garden = Garden.new("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
# garden.alice
# # => [:violets, :radishes, :violets, :radishes]
# garden.bob
# # => [:clover, :grass, :clover, :clover]


#mathildas solution

class Garden
  def initialize(seeds)
    @seeds = seeds
    @students = ['Bob', 'Alice', 'Charlie', 'David', 'Eve', 'Fred', 'Ginny', 'Harriet', 'Ileana', 'Joseph', 'Kincaid', 'Larry'].sort!
    @student_seed_dictionary = create_student_seed_dictionary
    find_student
  end

  def create_student_seed_dictionary
    student_seed_dictionary = {}
    seed = @seeds.split("\n")
    seed[0].split('').zip(seed[1].split('')).each_slice(2).with_index do |array_pair, i|
      plants_array = array_pair.flatten.map do |letter|
        plants[letter]
      end
      student_seed_dictionary[@students[i]] = plants_array
    end
    student_seed_dictionary
    binding.pry
  end

  def plants
    {
      'G' => :grass,
      'V' => :violets,
      'R' => :radieshes,
      'C' => :clover
    }
  end

  def find_student
    @student_seed_dictionary.each do |key, value|
      instance_eval "def #{key.downcase}; #{value}; end"
    end
  end


end

garden = Garden.new("VRCGVVRVCGGCCGVRGCVCGCGV\nVRCCCGCRRGVCGCRVVCVGCGCV")
puts garden.alice
# => [:violets, :radishes, :violets, :radishes]
puts garden.bob
# => [:clover, :grass, :clover, :clover]




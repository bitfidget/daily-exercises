# An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).
# The list of items (and their value) that were tested are:

# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.
# Write a program that, given a person's score can tell them
# a) whether or not they're allergic to a given item, and b) the full list of allergies.

class Allergies
  attr_reader :bitfield, :list
  ALLERGENS = { 
    :eggs => 1, 
    :peanuts => 2, 
    :shellfish => 4, 
    :strawberries => 8, 
    :tomatoes => 16, 
    :chocolate => 32, 
    :pollen => 64, 
    :cats => 128 
  }

  def initialize(bitfield)
    @bitfield = bitfield
    @list = ALLERGENS.map do |allergen, code|
      allergen if allergic_to?(allergen)
    end.compact  
  end

  def allergic_to?(allergen)
    code = ALLERGENS[allergen.to_sym]
    (@bitfield & code) > 0 ? true : false
  end

  def listold
    ALLERGENS.map do |allergen, code|
      allergen if allergic_to?(allergen)
    end.compact
  end

  def list
    @list
  end

end


tom = Allergies.new(34)
puts tom.allergic_to?('chocolate')
#=> true
puts tom.allergic_to?('cats')
#=> false
puts tom.listold
puts tom.list
#=> ['peanuts', 'chocolate']
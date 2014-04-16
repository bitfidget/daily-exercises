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
  def initialize(number)
    allergens = []
    divisor = 1
  
    while number > 0
      if ((number % divisor) != 0) || (number == divisor)
        divisor *= 2
      else
        allergens << divisor
        number = (number - divisor)
      end


      puts number

    end
  end
  def allergic_to?(allergen)
    allergens = { 'eggs' => 1, 'peanuts' => 2, 'shellfish' => 4, 'strawberries' => 8, 'tomatoes' => 16, 'chocolate' => 32, 'pollen' => 64, 'cats' => 128 }
  end
end

allergies = Allergies.new(34)
allergies.allergic_to?('chocolate')
#=> true
allergies.allergic_to?('cats')
#=> false
#allergies.list
#=> ['peanuts', 'chocolate']
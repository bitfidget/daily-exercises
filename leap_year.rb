# Year.new(1996).leap?
# on every year that is evenly divisible by 4
#  except every year that is evenly divisible by 100
#    except every year that is evenly divisible by 400.

class Year
  attr_accessor :year
  def initialize(year)
    @year = year.to_i
  end

  def leap?
    (self.year % 4 == 0) && (self.year % 100 != 0 || self.year % 400 == 0)
  end
end

class Fixnum
  def leap_year?
    Year.new(self).leap?
  end
end

puts Year.new(4).leap?

# def leap(year)
#   if year.to_i % 400 == 0
#     puts "#{year} is a leap year (divisable by 400)"
#   elsif  year.to_i % 4 == 0
#     if year.to_i % 100 == 0
#       puts "#{year} is NOT a leap year (divisable by 100)"
#     else
#       puts "#{year} is a leap year (divisable by 4)"
#     end
#   else
#     puts "#{year} is NOT a leap year"
#   end
# end

# leap(2372)
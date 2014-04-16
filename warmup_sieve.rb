# Write a program that uses the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

# The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit.

# Create your range, starting at two and ending at the given limit.

# The algorithm consists of repeating the following over and over:

# take the next available unmarked number in your list (it is prime)
# note: if there is no such number, you're done.
# remove all the multiples of that number (they are not prime)
# When the algorithm terminates, all the numbers in the list that are not marked are prime.

##works but its shit
# class Prime_time
#   def initialize(number)
#     numbers_all = (2..number).to_a
#     remove_2(numbers_all)
#   end

#   def remove_2(array)
#     numbers_prime = [2,3,5,7]
#     array.each do |number|
#       if (number % 2 != 0) && (number % 3 != 0) && (number % 5 != 0) && (number % 7 != 0)
#         numbers_prime << number
#       end
#     end
#     puts numbers_prime
#   end

# end

# this_number = Prime_time.new(30)


## second attempt
# class Sieve_time
#   def initialize(number)
#     numbers_all = (2..number).to_a
#     remove_non(numbers_all)
#   end

#   def remove_non(array)
#     numbers_action = [2,3,5,7]
#     numbers_prime = []
#     numbers_action.each do |action|
#       (array + action) = []
#       array.each do |number|
#         if number % action != 0
#           (array + action) << number
#         end
#       end
#       puts (array + action)
#     end
#     puts numbers_prime
#   end
# end

# this_number = Sieve_time.new(30)

class Sieve
  def self.calculate_primes(number)
    numbers = (2..number).to_a
    prime_numbers = []
    until numbers.empty?
      target = numbers.shift
      prime_numbers << target
      numbers.reject! do |number| 
        number % target == 0
      end
    end
    puts prime_numbers
  end
end

Sieve.calculate_primes(1000000)





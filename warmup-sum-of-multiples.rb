# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Write a program that, given a number, can find the sum of all the multiples of 3 or 5 up to and including that number.

# Allow the program to be configured to find the sum of multiples of numbers other than 3 and 5.


class Sum_of
  def initialize(*args)
    args.each do |arg_item|
      puts arg_item.inspect
      puts arg_item.class.inspect
    end
    if args.size == 1  
      puts "we're just dealing with the number"
      multiples(args[0], 3, 5)
    else  
      # args.size > 1  
      puts "we need the number and the two multipliers this way"
      multiples(args[0], args[1], args[2])  
    end  
  end

  # def multiples(number, mult1, mult2)
  #   puts number
  #   contestants = (0..number).to_a
  #   total = 0
  #   contestants.each do |contestant|
  #     if (contestant % mult1 == 0) || (contestant % mult2 == 0)
  #       puts contestant
  #       total += contestant
  #     end
  #   end  
  #   puts "total sum of #{number}s multiples (#{mult1} and #{mult2}) is: #{total}" 
  # end

  def multiples(number, mult1, mult2)
    contestants = (0..number).to_a.select do |contestant|
      (contestant % mult1 == 0) || (contestant % mult2 == 0) # get all the numbers we want to deal with
    end
    total = contestants.inject{|sum, number| sum + number } # create the sum of all of those numbers
    puts "total sum of #{number}s multiples (#{mult1} and #{mult2}) is: #{total}" 
  end
end

som = Sum_of.new(9)
som1 = Sum_of.new(9,3,5)
som2 = Sum_of.new(9,5,3)
som3 = Sum_of.new(50)
som4 = Sum_of.new(10,6,2)

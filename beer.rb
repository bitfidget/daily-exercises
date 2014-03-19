require 'pry'

puts "How many bottles of beer are on your wall currently?"
beers = gets.to_i

class Fixnum
  def bottles_of_beer
    beers = self
  end
end

def lyrics(beers)  
  if beers == 1
    print "#{beers} bottle"
  elsif beers == 0
    print "no more bottles"
  else
    print "#{beers} bottles"
  end
end

def drunken(beers)
  if beers % rand(1..4) == 1
    puts "*HiC!*"
    puts " "
  end
  if beers % rand(1..2) == 1
    puts "*BUUuuuRRp!*"
    puts " "
  end
end

binding.pry

while beers >= 1
  print "#{lyrics(beers)} of beer on the wall "
  puts "#{lyrics(beers)} of beer."
  print "Take one down and pass it around "
  puts "#{lyrics(beers -= 1)} of beer on the wall."
  puts " "
  drunken(beers)
end
if beers == 0
  print "#{lyrics(beers)} of beer on the wall, "
  puts "#{lyrics(beers)} of beer."
  print "Go to the store and buy some more... "
  print "How many beers would you like to buy? "
  beers = gets.to_i
  puts "...#{beers} bottles of beer on the wall!"
end


  
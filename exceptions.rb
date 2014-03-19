require 'pry'

puts "--------------"
puts "KKKKK    KKKKK"
puts " KKK    KKK"
puts " KKK   KK"
puts " KKK K"
puts " KKK   KK"
puts " KKK    KKK"
puts "KKKKK    KKKKK"
puts "--------------"
puts " KrapKode (TM)"
puts "--------------"

begin
  print "add number: "
  divisor = gets.chomp  
  puts "the result is #{3/divisor}"
rescue
  puts "that number is no good"
  retry
end

puts "Thanks for using KrapKode(TM)"

puts "This code will now explode"
# raise "boom!"
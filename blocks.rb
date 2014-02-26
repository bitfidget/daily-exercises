# nums = [1,3,5,7,11,13,17,19,23,29]

# i = 0
# while i < nums.length
#   puts "the number is #{nums[i]}"
#   i += 1
# end

# while x = nums.pop
#   puts "popped #{x}"
# end

# nums.each do |respond|
#   puts "#{respond}"
# end

# kittens = "fluffy/mr meows/scruffy/snowball".split '/'
# kittens.each do |kitty|
#   puts "the adorable #{kitty}"
# end

vices = {
  :groucho => 'cigars',
  :harpo => 'women',
  :chico => 'pranks'
}
vices.each do |bro,vice|
  puts "#{bro} vice is #{vice}"
end

#times
12.times do |i|
  puts "#{i+1} things"
end

#downto
5.downto(1) do |n|
  puts n
end
puts "blast off!"

#upto
40.upto(50) do |n|
  puts n
end

40.upto(50) { |n| puts "#{n} the in line way" }

#select
#to_a - makes an array!!
candidates = (1..100).to_a
odds = candidates.select do |i|
  i.odd?
end

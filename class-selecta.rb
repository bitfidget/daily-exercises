# require "pry"

us=["Simon","Anne","Olly","Kriss","Nix","Tom","Erik","Charlie","Mark"].shuffle

print "How many people per group? "
group = gets.chomp.to_i

remainder = us.length % group
groups_total = (us.length - remainder)/group

groups = []
us.each_slice(group).each do |x| 
  groups.push x
  puts "#{x}" 
end

if groups.last.size < group
  groups[-2] << groups.pop
  groups.last.flatten
end

i = 0
while i < groups_total
  puts "GROUP #{i+1}"
  puts groups[i]
  puts " "
  i += 1
end

# puts "above"


# groups.each do |x|
#   puts x+1
# end
# puts "new stuff here"

# i = 0

# groups.each do |x|
#   while i < group
#     puts x[i]
#     i += 1
#   end
# end


# if groups[-1].length < group
#   puts 'less'
# end


# groups.each do |x|
#   x.each do |name|
#     puts name
#   end
# end







# binding.pry
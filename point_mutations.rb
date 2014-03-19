string1 = "GAGCCTACTAACGGGAT".split(//)
string2 = "CATCGTAATGACGGCAT".split(//)

position = difference = 0

string1.each do |i|
  if i != string2[position]
    difference += 1
    puts "there is a difference at position #{position}"
  end
  position += 1
end

puts "difference = #{difference}"
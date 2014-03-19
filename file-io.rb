class Person
  attr_accessor :name, :age, :gender
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{name} is a #{age} year old #{gender}."
  end
end

#create a new file database.txt or open if it exists
f = File.new('database.txt', 'a+')

print "Write name to file? (y/n)"
response = gets.chomp.downcase

while response == 'y'
  print "Enter name, age, gender: "
  f.puts(gets.chomp)

  print "Write name to file? (y/n)"
  response = gets.chomp.downcase
end

f.close

people = []
# open the file again and just read it
f = File.new('database.txt', 'r')
f.each do |line|
  data = line.chomp.split(',')
  person = Person.new(data[0].strip, data[1].strip, data[2].strip)
  people << person
  # puts "Line from file is #{line}"
end
f.close

people.each do |person|
  puts "the person is: #{person}"
end
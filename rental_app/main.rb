require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'tenant'

building = Building.new('10ESTE', 'GA', false, false, 10)
print "add (p)erson or (a)partment or (b)uilding or (q)uit: "
response = gets.chomp.downcase
while response != 'q'
  if response == 'p'
    if building.apartments.empty?
      puts "Please create an apartment first"
      response = 'a'
      next
    end

    print 'name: '
    name = gets.chomp
    
    print 'age: '
    age = gets.to_i 
    
    print 'gender: '
    gender = gets.chomp 

    print 'which apartment do you want to live in? '
    apt = gets.chomp

    building.apartment[apt].renters << Person.new(name, age, gender)
  elsif response == 'a'
    print 'name: '
    name = gets.chomp

    print 'square feet: '
    sqft = gets.to_i

    building.apartments[name] = Apartment.new(name, sqft, 0, 0)
  elsif response == 'b'
    building = Building.new('10ESTE', 'GA', false, false, 10)
   end 

   puts building
   building.apartments.each do |apt|
    puts apt
  end

end

# binding.pry
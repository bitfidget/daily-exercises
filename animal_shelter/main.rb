require 'pry'

require_relative 'shelter'
require_relative 'client'
require_relative 'animal'

shelter = Shelter.new

# question to ask here is - we have K,v for each person/pet, but we still have a name variable...
# is that wrong? I would guess yes...
shelter.animals["Spot"] = Animal.new("Spot", 12, "male", "dog", ["bone", "frisbee"])
shelter.animals["Missy"] = Animal.new("Missy", 4, "female", "cat", ["wool", "mouse"])
shelter.animals["Fluff"] = Animal.new("Fluff", 4, "female", "hamster", ["wheel", "block"])

shelter.clients["Bob"] = Client.new("Bob", 45, "2", ["Toby", "Henny"])
shelter.clients["Bob"].pets['Spot'] =  shelter.animals["Spot"]
shelter.clients["Jim"] = Client.new("Jim", 32, "1", ["Fido"])
shelter.clients["Ann"] = Client.new("Ann", 29, "0", ["Fido"] )

puts "1. Create animal"
puts "2. Create client"
puts ""
puts "3. Display animals"
puts "4. Display clients"
puts ""
puts "5. Adopt animal"
puts "6. Surrender animal"
puts ""
puts "7. Quit"

response = gets.chomp.to_i

while response != 7
    if response == 1 #add new pets
        print ' name : '
        name = gets.chomp 
        print ' age '
        age = gets.to_i
        print ' gender :'
        gender = gets.chomp
        print ' species : '
        species = gets.chomp
        print ' list toys :'
        toys = gets.chomp.split.to_a
        # take all these variables and create a new entry in the class
        shelter.animals[name] = Animal.new(name, age, gender, species, toys)    

    elsif response == 2 #add new people
        print ' name : '
        name = gets.chomp 
        print ' age '
        age = gets.to_i
        print ' kids :'
        kids = gets.to_i
        print ' pets :'
        pets = gets.chomp.split.to_a
        # take all these variables and create a new entry in the class
        shelter.clients[name] = Client.new(name, age, kids, pets) 

    elsif response == 3 #print each animal
        shelter.animals.each do |animal|
            puts animal
        end

    elsif response == 4 #print each person
        shelter.clients.each do |client|
            puts client
        end

    elsif response == 5 #adopt pet
        #print out all animals
        puts "These are the available pets:"
        shelter.animals.each do |key, value|
            puts value.name
        end            
        puts "Which animal would you like to adopt?"
        adopt = gets.chomp
        #print out all clients
        puts "These are all registered clients:"
        shelter.clients.each do |key, value|
            puts value.name
        end
        puts "Choose a client to adopt #{adopt}"
        adopter = gets.chomp

        #EUREKA! this two lines does what we wanted - add the chosen animal to the chosen client's hash
        # THANKS MATHIILDA!!

        shelter.clients[adopter].pets[adopt] = shelter.animals[adopt]
        shelter.animals.delete(adopt)       

        puts "#{adopter} has adopted #{adopt}"
        puts ""

    elsif response == 6 #surrender pet
        #print out all clients
        puts "This is our list of clients"
        shelter.clients.each do |key, value|
            puts value.name
        end
        puts "Choose a client to give up a pet"
        deserter = gets.chomp
        puts "#{deserter} has these pets:"
        shelter.clients[deserter].pets.each do |key, value|
            puts value.name
        end
        puts "Which pet should #{deserter} give up?"
        deserted = gets.chomp

        shelter.animals[deserted] = shelter.clients[deserter].pets[deserted]
        shelter.clients[deserter].pets.delete(deserted)

        puts "#{deserter} has given up #{deserted}."
        puts "Poor #{deserted}."        
     
        #  puts "GIVE UP AND GO TO THE PUB!"
        
    end 

    puts "1. Create animal"
    puts "2. Create client"
    puts "3. Display animals"
    puts "4. Display clients"
    puts "5. Adopt animal"
    puts "6. Surrender animal"
    puts "7. Quit"

    response = gets.chomp.to_i
end
if response == 7
    Kernel.exit(true) 
end             
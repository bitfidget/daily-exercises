class Animal
  def speak
    puts "I am an animal. Roawr."
  end
  def move
    puts "I can move."
  end
end

class Mammal < Animal
  def eat
    puts "I can eat NOM NOM NOM"
  end
  def speak(action)
    puts action
    puts "I can speak"
  end
end

class Monkey < Mammal
  def swing
    puts "i can swing"
  end
  def speak(action)
    super
    puts "OooHOoohOoooK!"
  end
end


class Person < Animal
  attr_accessor :age, :name, :gender
  def initialize(age, gender, name)
    @age = age
    @gender = gender
    @name = name
  end
  # you can make a custom to_s function
  def to_s
    "#{name} is a #{gender} of #{age} years."
  end
  # 
  def Person.eye_count
    2
  end
end




# ALL of the following can be replaced with ONE line... the attr_accessor line at the start!
  # def age=(age)
  #   @age = age
  # end

  # def age()
  #   @age
  # end

  # def gender=(gender)
  #   @gender = gender
  # end

  # def gender()
  #   @gender
  # end

  # def name=(name)
  #   @name = name
  # end

  # def name()
  #   @name
  # end


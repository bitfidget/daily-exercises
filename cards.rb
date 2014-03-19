# create the card class
class Card
  attr_accessor :suit, :value
  def initialize(value, suit)
    @suit = suit
    @value = value
  end 
  def to_s
    "#{value} of #{suit}"
  end
end

# create a deck class and populate with all cards
class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    
    suits = [:hearts, :clubs, :diamonds, :spades]
    values = [:ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king]
    suits.each do |suit|
      values.each do |values|
        @cards << Card.new(values, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal(n=1)
    @cards.slice!(0, n)
  end
end

class Player
  attr_accessor :name, :hand
  def initialize(name)
    @name = name
    @hand = []
  end
  def to_s
    "#{@name}: #{@hand.join(', ')}"
  end
end

#creates and shuffles deck
deck1 = Deck.new
deck1.shuffle
# prints out the deck
deck1.cards.each do |card|
  puts card
end

# create players and deal some cards
players = [Player.new("Tim"),Player.new("Bingo"),Player.new("James")]
players.each do |player|
  player.hand = deck1.deal 8
end

# show each player hand
players.each do |player|
  puts player
# the to_s method added to the players class makes these following two lines ot needed  
#  puts "Player - #{player.name}"
#  puts player.hand.join
end



#create the deck
deck1 = Deck.new

#shuffle the deck 
deck1.cards.shuffle!

deck1.cards.each do |card|
  puts card
end



# c1 = Card.new(9, :diamonds)
# deck1.cards.push c1
# c2 = Card.new(9, :diamonds)
# deck1.cards.push c2


deck1.cards.each do |card|
  puts card
end

# i survived week i
# i += 1

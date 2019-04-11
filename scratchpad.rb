class Card
  attr_accessor :rank, :suit 
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end  

  def self.random_card
    Card.new(rand(10), :spades)
  end  

end

class Deck
  def initialize
    @cards = []
    @cards << Card.new(10, :spades)
    @cards << Card.new(9, :diamonds)
    @cards << Card.new(3, :hearts)
  end

  def shuffle
    @cards.shuffle!
  end

  def output 
    @cards.each do |card|
      card.output_card
    end  
  end

  def deal
    @cards.each do |card|
      card.output_card
      @cards.shift
      return
    end
  end

end

deck = Deck.new
deck.deal
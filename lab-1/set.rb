require "./card.rb"

def create_deck
  deck = []

  colors = ["red", "green", "purple"]
  numbers = [1, 2, 3]
  shapes = ["diamond", "squiggle", "oval"]
  shadings = ["solid", "striped", "open"]

  colors.each do |color|
    numbers.each do |number|
      shapes.each do |shape|
        shadings.each do |shading|
          deck << Card.new(color, number, shape, shading)
        end
      end
    end
  end

  deck
end


# Main game code
puts "Game Started"
deck = create_deck

# Randomly pick 12 cards from the deck
totalCard = 0
temp = []

  while totalCard < 12 
    item = deck.sample
    puts "#{item.color}, #{item.number}, #{item.shape}, #{item.shading}"
    temp = deck.delete(item)
    totalCard = totalCard + 1
  end

#deck.each {|card| puts card.color, card.number, card.shape, card.shading, "\n"}

#puts Card.valid_set?(Card.new("red", 1, "diamond", "solid"), Card.new("red", 1, "diamond", "striped"), Card.new("red", 1, "diamond", "open"))

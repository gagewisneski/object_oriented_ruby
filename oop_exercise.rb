# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!


class Card
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

end

class Deck
  def initialize(trivia_data)
    @cards = []
    trivia_data.each do |question, answer|
      @cards << Card.new(question, answer)
    end
  end

  def remaining_cards
    @cards.length
  end


  def draw_card
    @cards.pop
  end
end

trivia_data = {
  "What is the capital of Illinois?
  A. wrong
  B. Springfield
  C. wrong" => "B",
  "Is Africa a country or a continent?
  A. Continent
  B. Country" => "A",
  "Tug of war was once an Olympic event.
  A. True
  B. False?" => "A",
  "Is a dog a cat?
  A. Yes
  B. No" => "B"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase != card.answer.downcase
    puts "Incorrect! Try again!"
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Correct!"
    else
      puts "Incorrect!"
    end
  else
    puts "Correct!"
  end
end
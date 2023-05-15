class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
=begin
 # method 1
  # runs before every single test
  before do
    # declares instance var, accessible within each test
    @card = Card.new 'Ace' 'Spaces'
  end
=end

=begin
  # method 2
  def card
    Card.new('Ace', 'Spades')
  end
  #has mutation problem
=end
  
# method 3
# symbol arg becomes an accessible var
# val in block becomes the val of var
# behavior
#     1) between tests, diff instances
#     1) within test, same instance
  let(:card) { Card.new('Ace', 'Spades') }
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end

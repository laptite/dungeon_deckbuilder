class Deck < ActiveRecord::Base
  attr_accessible :description, :name, :cards_to_add

  has_many :cards

  validates_presence_of :name

  def cards_to_add=(cards)
    cards.each do |card|
      self.cards.build(:name => card)
    end
  end

end

class Card < ActiveRecord::Base
  attr_accessible :deck_id, :name, :strength

  validates :name, :presence => true

  belongs_to :deck
end

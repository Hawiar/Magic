class Card < ActiveRecord::Base
has_many :player_cards
has_many :players, through: :player_cards
validates_presence_of :name
end

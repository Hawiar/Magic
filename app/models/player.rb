class Player < ActiveRecord::Base
has_many :player_cards
has_many :cards, through: :player_cards
validates_presence_of :first_name
validates_presence_of :last_name

end

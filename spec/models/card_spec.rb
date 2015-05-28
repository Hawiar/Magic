require 'rails_helper'

describe 'Card' do

  it { should have_many :player_cards }
  it { should have_many (:cards).through(:players_cards) }

  describe "Validation:" do
    it "is invalid without a name" do
      card = Card.new(name: nil)
      expect(card.valid?).to be false
    end
  end
end

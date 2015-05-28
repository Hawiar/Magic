require 'rails_helper'

describe 'Player' do

  it { should have_many :player_cards }
  it { should have_many (:cards).through(:players_cards) }

  describe "Validation:" do
    it "is invalid without a first name" do
      player = Player.new(first_name: nil)
      expect(player.valid?).to be false
    end
  
    it "is invalid without a last name" do
      player = Player.new(last_name: nil)
      expect(player.valid?).to be false
    end
  end
end

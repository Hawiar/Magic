require 'spec_helper'

describe 'Player' do

  it { should have_many :player_cards }
  it { should have_many :cards.through(:players_cards) }

  describe "Validation:" do
    it "is invalid without a first name" do
      player = Player.new(first_name: nil)
      player.valid?
      expect(player.errors[:first_name]).to include("can't be blank")
    end
  
    it "is invalid without a last name" do
      player = Player.new(last_name: nil)
      player.valid?
      expect(player.errors[:last_name]).to include("can't be blank")
    end
  end
end

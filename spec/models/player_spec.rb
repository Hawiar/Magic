require 'player'

describe 'Player' do

  it { should have_many :player_cards }
  it { should have_many :cards.through(:players_cards) }

  describe "Validation:" do
    it "is invalid without a first name" do
      build(:player, first_name: nil).should_not be_valid
    end

    it "is invalid without a a last name" do
      build(:player, last_name: nil).should_not be_valid
    end
  end
end

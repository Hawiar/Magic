require 'rails_helper'

describe CardController do
  
  describe "GET show" do
    it "assigns the card request as @card" do
    card = Card.create(name: "Goblin")
    expect(assigns[:card]).to eq(card)
    end
  end
end

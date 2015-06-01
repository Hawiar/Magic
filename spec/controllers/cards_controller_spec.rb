require 'rails_helper'

describe CardsController do
  
  describe "GET show" do
    it "assigns the card request as @card" do
    card = Card.create(name: "Goblin")
    get :show, id: card.id
    expect(assigns[:card]).to eq(card)
    end
  end

  describe "GET index" do
    it "assigns all cards in the game as @cards" do
      card = Card.create(name: "Goblin")
      get :index
      expect(assigns[:cards]).to eq([card])
    end
  end

  describe "GET new" do
    it "assigns a new card as @card" do
      get :new
      expect(assigns[:card]).to be_a_new(Card) 
    end
  end

  describe "GET edit" do
    it "redirects to the edit page" do
      card = Card.create(name: "Goblin")
      expect(response).to redirect_to(edit_card_path(card))
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new card item" do
        expect {
          post :create, {:card => attributes_for(:card)}
        }.to change(Card, :count).by(1) 
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested card" do
        card = create :card
        expect_any_instance_of(Card).to receive(:update_attributes)
          .with({'card_id' => '1'})
        put :update, {:id => card.to_param,
          :card => {'card_id' => '1'}}
      end  
    end
  end

  describe "DELETE destroy" do
    it "deletes the card from the card database" do
      card = Card.create(name: "Goblin")
      expect {
        delete :destroy, {:id => card.to_param}
      }.to change(Card, :count).by(-1)
    end
  end
end

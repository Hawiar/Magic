require 'rails_helper'

describe CardsController do
  let!(:card) {Card.create(name: "Goblin")}

  describe "GET show" do
    it "assigns the card request as @card" do
    get :show, id: card.id
    expect(assigns[:card]).to eq(card)
    end
  end

  describe "GET index" do
    it "assigns all cards in the game as @cards" do
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
      get :edit, id: card.id
      expect(response).to render_template :edit
    end
    it "assigns the correct card" do
      get :edit, id: card.id
      expect(assigns[:card]).to eq(card)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new card item" do
        expect {
          post :create, {card: {name: "Goblin"} }
        }.to change(Card, :count).by(1) 
      end
      it "renders the show template" do
        post :create, {card: {name: "Goblin"}}
        expect(response).to redirect_to(Card.last)
      end
    end
    describe "with invalid params" do
      it "doesn't create a new card" do
        expect {
          post :create, {card: {name: nil}}
        }.to change(Card, :count).by(0)
      end
      it "rerenders new template" do
        post :create, {card: {name: nil}}
        expect(response).to render_template :new
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested card" do
        expect_any_instance_of(Card).to receive(:update)
          .with({name: 'Dragon'})
        put :update, {:id => card.id,
          :card => {name: 'Dragon'}}
      end  
      it "renders the show template" do
        put :update, {:id => card.id,
                      card: {name: "Goblin"}}
        expect(response).to redirect_to(card)
      end
    end
    describe "with invalid params" do
      it "rerenders the edit template" do 
        put :update, {:id => card.id, card: {name: nil}}
        expect(response).to render_template :edit
      end
    end
  end

  describe "DELETE destroy" do
    it "deletes the card from the card database" do
      expect {
        delete :destroy, {:id => card.to_param}
      }.to change(Card, :count).by(-1)
    end
    it "redirects to the index page" do
      delete :destroy, {:id => card.to_param}
      expect(response).to redirect_to(cards_path)
    end
  end
end

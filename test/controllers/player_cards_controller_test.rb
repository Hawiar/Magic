require 'test_helper'

class PlayerCardsControllerTest < ActionController::TestCase
  setup do
    @player_card = player_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_card" do
    assert_difference('PlayerCard.count') do
      post :create, player_card: { card_id: @player_card.card_id, player_id: @player_card.player_id }
    end

    assert_redirected_to player_card_path(assigns(:player_card))
  end

  test "should show player_card" do
    get :show, id: @player_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_card
    assert_response :success
  end

  test "should update player_card" do
    patch :update, id: @player_card, player_card: { card_id: @player_card.card_id, player_id: @player_card.player_id }
    assert_redirected_to player_card_path(assigns(:player_card))
  end

  test "should destroy player_card" do
    assert_difference('PlayerCard.count', -1) do
      delete :destroy, id: @player_card
    end

    assert_redirected_to player_cards_path
  end
end

json.array!(@player_cards) do |player_card|
  json.extract! player_card, :id, :player_id, :card_id
  json.url player_card_url(player_card, format: :json)
end

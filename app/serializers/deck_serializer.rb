class DeckSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :deck_type, :recommended_cards
end

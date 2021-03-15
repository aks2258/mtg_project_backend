class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :manaCost, :colors, :type, :types, :subtypes, :id, :power, :toughness, :imgUrl
end

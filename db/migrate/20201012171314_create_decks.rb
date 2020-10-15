class CreateDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :decks do |t|
      t.string :name
      t.integer :user_id
      t.string :deck_type
      t.string :recommended_cards
      t.string :cards

      t.timestamps
    end
  end
end

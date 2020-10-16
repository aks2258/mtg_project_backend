class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :manaCost
      t.string :colors
      t.string :type
      t.string :types
      t.string :subtypes
      t.string :card_effect
      t.string :power
      t.string :toughness
      t.string :imgUrl
      t.integer :deck_id

      t.timestamps
    end
  end
end

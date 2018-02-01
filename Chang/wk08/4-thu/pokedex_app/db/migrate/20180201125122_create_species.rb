class CreateSpecies < ActiveRecord::Migration[5.1]
  def change
    create_table :species do |t|
      t.string :name
      t.string :prototype
      t.integer :evolute_level
      t.string :img_url
      t.integer :rarity
      t.integer :growth_rate
      t.integer :min_level
      t.integer :max_level

      t.timestamps
    end
  end
end

class CreateLocationRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :location_records do |t|
      t.references :location, foreign_key: true
      t.references :species, foreign_key: true

      t.timestamps
    end
  end
end

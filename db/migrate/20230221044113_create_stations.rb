class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :train
      t.string :name
      t.integer :walk
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :address, null: false
      t.integer :build, null: false
      t.text :remarks

      t.timestamps
    end
  end
end

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :hood
      t.boolean :date
      t.boolean :patio
      t.integer :cost
      t.text :ambiguous
      t.string :addy

      t.timestamps
    end
  end
end

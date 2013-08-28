class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :nameb
      t.string :hoodb
      t.string :kindb
      t.boolean :dateb
      t.boolean :patiob
      t.integer :costb
      t.text :ambiguousb
      t.string :addyb

      t.timestamps
    end
  end
end

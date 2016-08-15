class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :number
      t.integer :type
      t.integer :price
      t.string :description
      t.integer :color

      t.timestamps
    end
  end
end

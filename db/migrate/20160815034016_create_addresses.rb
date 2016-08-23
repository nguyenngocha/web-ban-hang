class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :town
      t.string :village
      t.string :home_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

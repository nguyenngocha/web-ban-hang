class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :image
      t.integer :target_type
      t.integer :target_id

      t.timestamps
    end
  end
end

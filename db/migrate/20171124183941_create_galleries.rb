class CreateGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.integer :user_id
      t.string :gallery_name
      t.integer :dim_x
      t.integer :dim_y
      t.integer :dim_z

      t.timestamps
    end
  end
end

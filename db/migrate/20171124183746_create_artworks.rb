class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.integer :user_id
      t.string :artist
      t.string :title
      t.string :date
      t.string :materials
      t.string :image_url
      t.integer :dim_x
      t.integer :dim_y

      t.timestamps
    end
  end
end

class CreateArtworkGalleries < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_galleries do |t|
      t.integer :artwork_id
      t.integer :gallery_id

      t.timestamps
    end
  end
end

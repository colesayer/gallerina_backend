class CreateSceneArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :scene_artworks do |t|
      t.integer :scene_id
      t.integer :artwork_id
      t.decimal :position_x
      t.decimal :position_y
      t.decimal :position_z
    end
  end
end

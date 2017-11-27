class AddFloorTextureAndWallColorToGalleries < ActiveRecord::Migration[5.1]
  def change
    add_column :galleries, :floor_texture, :string
    add_column :galleries, :wall_color, :string
  end
end

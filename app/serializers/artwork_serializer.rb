class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :date, :materials, :image_url, :dim_x, :dim_y
end

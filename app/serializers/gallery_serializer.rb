class GallerySerializer < ActiveModel::Serializer
  attributes :id, :gallery_name, :dim_x, :dim_y, :dim_z
end

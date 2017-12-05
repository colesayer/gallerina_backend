class SceneSerializer < ActiveModel::Serializer
  attributes :id, :name, :gallery_id
  
  has_many :scene_artworks
  has_many :artworks
  belongs_to :gallery

  # {scene_artworks: [
  #   {
  #     id: 1,
  #     position:
  #     artwork: {
  #
  #     }
  #   }
  #   ]}
end

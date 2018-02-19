class SceneArtworkSerializer < ActiveModel::Serializer
  attributes :artwork_id, :scene_id, :position_x, :position_y, :position_z
end

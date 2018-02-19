class Scene < ApplicationRecord
  belongs_to :user
  has_many :scene_artworks
  has_many :artworks, through: :scene_artworks
  belongs_to :gallery
end

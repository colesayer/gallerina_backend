class Artwork < ApplicationRecord
  belongs_to :user
  has_many :scene_artworks
  has_many :scenes, through: :scene_artworks
end

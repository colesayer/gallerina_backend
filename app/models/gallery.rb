class Gallery < ApplicationRecord
  belongs_to :User
  has_many :Artworks, through: :ArtworkGallery
end

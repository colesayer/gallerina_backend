class ArtworkGallery < ApplicationRecord
  belongs_to :artwork
  belongs_to :gallery
end

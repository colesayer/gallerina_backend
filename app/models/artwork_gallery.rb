class ArtworkGallery < ApplicationRecord
  belongs_to :Artwork
  belongs_to :Gallery
end

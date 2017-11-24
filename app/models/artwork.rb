class Artwork < ApplicationRecord
  belongs_to :User
  has_many :Galleries, through: :ArtworkGallery
end

class Gallery < ApplicationRecord
  belongs_to :user
  has_many :scenes
  has_many :artworks, through: :artwork_galleries
end

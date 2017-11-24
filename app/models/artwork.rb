class Artwork < ApplicationRecord
  belongs_to :user
  has_many :galleries, through: :artwork_galleries
end

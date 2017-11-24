class User < ApplicationRecord
  has_many :artworks
  has_many :galleries
end

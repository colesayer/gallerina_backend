class User < ApplicationRecord
  has_many :Artworks
  has_many :Galleries
end

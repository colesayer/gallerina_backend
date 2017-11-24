class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email_address

  has_many :artworks
  has_many :galleries
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :created_at, :updated_at, :last_login

  # has_many :artworks
  # has_many :galleries
end

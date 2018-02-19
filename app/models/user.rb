class User < ApplicationRecord
  has_secure_password
  has_many :artworks
  has_many :galleries
  has_many :scenes

  validates_length_of       :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation {
   (self.email = self.email.to_s.downcase) && (self.name = self.name.to_s.downcase)
  }

  validates_presence_of     :email
  validates_presence_of     :name
  validates_uniqueness_of   :email
  validates_uniqueness_of   :name

end

class User < ActiveRecord::Base
  validates :email, uniqueness: true, presence: true
  validates :handle, presence: true

  has_secure_password
end

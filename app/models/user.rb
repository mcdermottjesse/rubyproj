class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, length: {minimum: 5}, uniqueness: {:case_sensitive => false}
  validates :email, length: {minimum: 5}
  validates :password, presence: true
  validates :password, length: { minimum: 5 }

def self.authenticate_with_credentials(email, password)
  user = User.find_by_email(email)
  if user && user.authenticate(password)
    user
  else
    nil
  end
end
end

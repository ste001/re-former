class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, presence: true, uniqueness: true,
            length: {maximum: 30}
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true, length: {minimum: 6}
end

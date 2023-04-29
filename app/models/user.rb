class User < ApplicationRecord
  has_secure_password

  has_many :prompt_templates
  has_many :likes
  has_many :comments

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password_digest, presence: true, length: { minimum: 8 }
end

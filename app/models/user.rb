class User < ApplicationRecord
    has_secure_password

    validates :username, length: { minimum: 2 },presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    validates :password, presence: true

    has_one :cart
    has_many :cart_items, through: :cart
end

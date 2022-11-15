class User < ApplicationRecord
    has_many :items
    has_many :likes
    has_many :items, through: :likes
    has_many :comments
    has_secure_password
    # validates :name, presence: true
    # validates :email, :uniqueness: true
end

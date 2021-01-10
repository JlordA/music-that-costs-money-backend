class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :albums, through: :posts
    has_many :favorties, dependent: :destroy
    has_many :albums, through: :favorties
    has_secure_password
end

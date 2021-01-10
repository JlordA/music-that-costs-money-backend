class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :albums, through: :posts
    has_many :favorites, dependent: :destroy
    has_many :albums, through: :favorites
    has_secure_password
end

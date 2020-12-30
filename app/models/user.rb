class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :albums, through: :posts
end

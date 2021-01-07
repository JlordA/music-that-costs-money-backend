class Album < ApplicationRecord
    has_many :posts
    has_many :users, through: :posts
    has_many :favorties
    has_many :users, through: :favorties
end

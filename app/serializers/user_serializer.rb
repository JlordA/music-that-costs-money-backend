class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :password, :bio, :img
    has_many :posts
    has_many :favorites
end
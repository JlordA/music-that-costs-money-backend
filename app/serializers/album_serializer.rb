class AlbumSerializer < ActiveModel::Serializer
    attributes :id, :title, :artist, :year, :url, :thumb, :wants
    has_many :posts
    has_many :favorites
end

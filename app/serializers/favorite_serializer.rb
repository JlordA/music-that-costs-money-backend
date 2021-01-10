class FavoriteSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :album_id
    belongs_to :user
    belongs_to :album
end
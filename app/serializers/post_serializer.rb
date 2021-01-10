class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :body, :price, :like, :for_sale, :user_id, :album_id
    belongs_to :user
    belongs_to :album
end
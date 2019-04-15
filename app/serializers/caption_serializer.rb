class CaptionSerializer < ActiveModel::Serializer
  attributes :id, :text, :likes
  has_one :meme
end

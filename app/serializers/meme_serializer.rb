class MemeSerializer < ActiveModel::Serializer
  attributes :id, :url, :title

  has_many :captions
end

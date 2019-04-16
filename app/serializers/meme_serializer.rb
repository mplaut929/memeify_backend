class MemeSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :created_at

  has_many :captions
end

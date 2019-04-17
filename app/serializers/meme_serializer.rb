class MemeSerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :gif_url, :created_at

  has_many :captions
end

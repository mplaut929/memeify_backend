class Meme < ApplicationRecord
  has_many :captions, -> {order('likes DESC')}, dependent: :destroy
end

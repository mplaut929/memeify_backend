class Meme < ApplicationRecord
  has_many :captions, -> {order('likes DESC')}
end

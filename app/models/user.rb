class User < ApplicationRecord
  has_many :favorites

  def favorite(concert)
    favorites.where(concert: concert).take
  end
end

class Concert < ApplicationRecord
  has_many :favorites

  validates :title, presence: true
end

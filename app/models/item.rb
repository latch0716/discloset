class Item < ApplicationRecord
  has_one_attached :image

  validates :image, presence: true
  varidates :category, presence: true
  varidates :color, presence: true
  varidates :purchase_date, presence: true

  scope :sort_new, -> {order(created_at: :desc)}
  scope :sort_old, -> {order(created_at: :asc)}

end

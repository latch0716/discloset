class Item < ApplicationRecord
  has_one_attached :image

  validates :image, presence: true
  validates :category, presence: true
  validates :color, presence: true
  validates :purchase_date, presence: true

  scope :sort_new, -> {order(created_at: :desc)}
  scope :sort_old, -> {order(created_at: :asc)}

end

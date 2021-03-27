class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :place
  belongs_to :category

  validates :name, :count, :place_id, :category_id,presence: true
  validates :place_id, numericality: { other_than: 1 }
  validates :category_id, numericality: { other_than: 1 }
end

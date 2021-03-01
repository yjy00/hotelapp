class Kitchen < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one_attached :image

  belongs_to :category
  belongs_to :count
  belongs_to :place

  validates :name, :category_id, :count_id, :place_id, presence: true
  validates :category_id, numericality: { other_than: 1 }
  validates :count_id, numericality: { other_than: 1 }
  validates :place_id, numericality: { other_than: 1 }
end

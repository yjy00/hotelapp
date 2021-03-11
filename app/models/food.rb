class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :place

  validates :name, :count, :place_id, presence: true
  validates :place_id, numericality: { other_than: 1 }
end

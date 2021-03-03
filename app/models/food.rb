class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :count
  belongs_to :place

  validates :name, :count_id, :place_id, presence: true
  validates :count_id, numericality: { other_than: 1 }
  validates :place_id, numericality: { other_than: 1 }

end

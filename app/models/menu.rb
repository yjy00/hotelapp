class Menu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :category

  validates :name, :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 }
end

class Hall < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :category


  validates :name, presence: true
  validates :genre_id, numericality: { other_than: 1 } 

end

# frozen_string_literal: true

class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :place
  belongs_to :category

  validates :name, :count, :place_id, :category_id, presence: true
  validates :place_id, numericality: { other_than: 1 }
  validates :category_id, numericality: { other_than: 1 }
  validates :count, numericality: { greater_than_or_equal_to: 0 }
end

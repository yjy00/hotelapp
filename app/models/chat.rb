# frozen_string_literal: true

class Chat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :from
  has_one_attached :image

  validates :from_id, :by, presence: true
  validates :from_id, numericality: { other_than: 1 }
end

class RegularGuest < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :status

  validates :name, presence: true
  validates :status_id, numericality: { other_than: 1 }
end

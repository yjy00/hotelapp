class Chat < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :from

  validates :from_id, :by, :message, presence: true
  validates :from_id, numericality: { other_than: 1 }
end

class RegularGuest < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :status

  validates :name, presence: true
  validates :status_id, numericality: { other_than: 1 }
  validates :member_number, allow_blank: true, numericality: {only_integer: true}, length: { in: 0..10 }
end

# frozen_string_literal: true

class RegularGuest < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :status

  validates :name, presence: true
  validates :member_number, allow_blank: true, numericality: { only_integer: true }, length: { in: 0..9 }
  validates :name, length: { maximum: 40 }
end

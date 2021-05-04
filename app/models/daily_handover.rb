# frozen_string_literal: true

class DailyHandover < ApplicationRecord
  validates :month, :date, presence: true
  validates :month, numericality: { greater_than_or_equal_to: 0 }
  validates :date, numericality: { greater_than_or_equal_to: 0 }
end

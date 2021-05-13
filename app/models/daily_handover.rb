# frozen_string_literal: true

class DailyHandover < ApplicationRecord
  validates :month, :date, presence: true
  validates :month, numericality: { greater_than_or_equal_to: 1 }
  validates :date, numericality: { greater_than_or_equal_to: 1 }
end

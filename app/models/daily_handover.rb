# frozen_string_literal: true

class DailyHandover < ApplicationRecord
  validates :month, :date, presence: true
  validates :month, numericality: { greater_than_or_equal_to: 1 }
  validates :date, numericality: { greater_than_or_equal_to: 1 }

  validates :daily_remark, length: { maximum: 1000 }
  validates :to_morning, length: { maximum: 1000 }
  validates :to_evening, length: { maximum: 1000 }
  validates :for_tomorrow, length: { maximum: 1000 }
end

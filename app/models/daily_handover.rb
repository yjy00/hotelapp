class DailyHandover < ApplicationRecord
  validates :month, :date, presence: true
end

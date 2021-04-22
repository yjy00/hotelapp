# frozen_string_literal: true

class DailyHandover < ApplicationRecord
  validates :month, :date, presence: true
end

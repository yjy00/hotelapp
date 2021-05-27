# frozen_string_literal: true

class PeopleManagement < ApplicationRecord
  validates :morning, :waiter, :kitchen, :dish_wash, presence: true
  validates :morning, numericality: { greater_than_or_equal_to: 0 }
  validates :waiter, numericality: { greater_than_or_equal_to: 0 }
  validates :kitchen, numericality: { greater_than_or_equal_to: 0 }
  validates :dish_wash, numericality: { greater_than_or_equal_to: 0 }

  validates :morning, length: { maximum: 4 }
  validates :waiter, length: { maximum: 3 }
  validates :kitchen, length: { maximum: 3 }
  validates :dish_wash, length: { maximum: 3 }
end

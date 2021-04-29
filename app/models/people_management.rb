# frozen_string_literal: true

class PeopleManagement < ApplicationRecord

  validates :morning, numericality: { greater_than_or_equal_to: 0 }
  validates :waiter, numericality: { greater_than_or_equal_to: 0 }
  validates :kitchen, numericality: { greater_than_or_equal_to: 0 }
  validates :dish_wash, numericality: { greater_than_or_equal_to: 0 }

end

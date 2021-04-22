# frozen_string_literal: true

class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Bar' },
    { id: 3, name: 'Restaurant' }
  ]

  include ActiveHash::Associations
  has_many :foods
  has_many :beverages
  has_many :equipments
end

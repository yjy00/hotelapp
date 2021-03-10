class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: 'Titanium'},
    { id: 3, name: 'Platinum'},
    { id: 4, name: 'Gold'},
    { id: 5, name: 'Silver'},
    { id: 6, name: 'Normal'}
  ]

  include ActiveHash::Associations
  has_many :regular_guests
end
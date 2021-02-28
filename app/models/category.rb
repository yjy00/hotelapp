class Category < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Appetizer' },
    { id: 3, name: 'Main Dish' },
    { id: 4, name: 'Dessert' },
    { id: 5, name: 'Salad' },
    { id: 6, name: 'Fruit' },
    { id: 7, name: 'Alcohol' },
    { id: 8, name: 'Juice' },
    { id: 9, name: 'Equipment' },
    { id: 10, name: 'Bar Menu' },
    { id: 11, name: 'Other' }
  ]

  include ActiveHash::Associations
    has_many :halls
    has_many :kitchens

  
end
  
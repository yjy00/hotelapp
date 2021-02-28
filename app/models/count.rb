class Count < ActiveHash::Base

  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1' },
    { id: 3, name: '2' },
    { id: 4, name: '3' },
    { id: 5, name: '4' },
    { id: 6, name: '5' },
    { id: 7, name: '6' },
    { id: 8, name: '7' },
    { id: 9, name: '8' },
    { id: 10, name: '9' },
    { id: 11, name: '10' },
    { id: 12, name: '11' },
    { id: 13, name: '12' },
    { id: 14, name: '13' },
    { id: 15, name: '14' },
    { id: 16, name: '15' },
    { id: 17, name: '16' },
    { id: 18, name: '17' },
    { id: 19, name: '18' },
    { id: 20, name: '19' },
    { id: 21, name: '20' },
    { id: 22, name: '21' },
    { id: 23, name: '22' },
    { id: 24, name: '23' },
    { id: 25, name: '24' },
    { id: 26, name: '25' },
    { id: 27, name: '26' },
    { id: 28, name: '27' },
    { id: 29, name: '28' },
    { id: 30, name: '29' },
    { id: 31, name: '30' },
    { id: 32, name: '31' },
    { id: 33, name: '32' },
    { id: 34, name: '33' },
    { id: 35, name: '34' },
    { id: 36, name: '35' },
    { id: 37, name: '36' },
    { id: 38, name: '37' },
    { id: 39, name: '38' },
    { id: 40, name: '39' },
    { id: 41, name: '40' },
    { id: 42, name: '41' },
    { id: 43, name: '42' },
    { id: 44, name: '43' },
    { id: 45, name: '44' },
    { id: 46, name: '45' },
    { id: 47, name: '46' },
    { id: 48, name: '47' },
    { id: 49, name: '48' },
    { id: 50, name: '49' },
    { id: 51, name: '50' },
  ]

  include ActiveHash::Associations
    has_many :halls
    has_many :kitchens

  
end
  
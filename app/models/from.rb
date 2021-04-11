class From < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ホール' },
    { id: 3, name: 'キッチン' }

  ]

  include ActiveHash::Associations
  has_many :chats
end

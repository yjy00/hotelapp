class Chat < ApplicationRecord

  belongs_to :from

  validates :from_id, :by, :message, presence:true
end

class Hall < ApplicationRecord
  validates :name, :count, presence: true
end

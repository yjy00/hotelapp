# frozen_string_literal: true

class RegularGuest < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :status

  validates :name, presence: true
end

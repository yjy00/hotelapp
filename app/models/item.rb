# frozen_string_literal: true

class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_one_attached :image
  belongs_to :place
  belongs_to :category

  validates :name, :count, :place_id, :category_id, presence: true
  validates :place_id, numericality: { other_than: 1 }
  validates :category_id, numericality: { other_than: 1 }
  validates :count, numericality: { greater_than_or_equal_to: 0 }

  def self.sort(selection)
    case selection
    when '---'
      Item.where(category_id: 2..7).order('updated_at DESC')
    when 'appetiser'
      Item.where(category_id: 2).order('updated_at DESC')
    when 'maindish'
      Item.where(category_id: 3).order('updated_at DESC')
    when 'dessert'
      Item.where(category_id: 4).order('updated_at DESC')
    when 'salad'
      Item.where(category_id: 5).order('updated_at DESC')
    when 'fruit'
      Item.where(category_id: 6).order('updated_at DESC')
    when 'barmenu'
      Item.where(category_id: 7).order('updated_at DESC')
    end
  end
end

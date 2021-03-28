class BeveragesController < ApplicationController
  def index
    @items = Item.where(category_id: 8..9).order('updated_at DESC')
  end
end

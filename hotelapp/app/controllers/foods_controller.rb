class FoodsController < ApplicationController
  def index
    @items = Item.where(category_id: 2..7).order('updated_at DESC')
  end
end

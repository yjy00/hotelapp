class OrdersController < ApplicationController
  def index
    @items = Item.where(category_id: 8..10).where('count <= 2').order('updated_at DESC')
  end
end

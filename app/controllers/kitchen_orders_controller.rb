class KitchenOrdersController < ApplicationController
  def index
    @items = Item.where(category_id: 2..7).where('count <= 2').order('updated_at DESC')
  end
end

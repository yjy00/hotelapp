class KitchenOrdersController < ApplicationController

  def index
    @foods = Food.where('count <= 2').order('updated_at DESC')
  end
end

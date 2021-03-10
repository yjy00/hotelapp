class OrdersController < ApplicationController

  def index
    @beverages = Beverage.where('count <= 2').order('updated_at DESC')
    @equipments = Equipment.where('count <= 2').order('updated_at DESC')
  end
  
end

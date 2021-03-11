class OrdersController < ApplicationController

  def index
    beverages = Beverage.where('count <= 2').order('updated_at DESC')
    equipments = Equipment.where('count <= 2').order('updated_at DESC')

    # それぞれの複数インスタンスを1つの配列にする
    @instances = beverages | equipments
    # 作成降順に並び替え
    @instances.sort!{ |a, b| b.updated_at <=> a.updated_at }
  end

end
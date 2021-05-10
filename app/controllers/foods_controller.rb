# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @items = Item.where(category_id: 2..7).order('updated_at DESC')
  end

  def search
    selection = params[:category]
    @items = Item.sort(selection)
  end

end

# frozen_string_literal: true

class BeveragesController < ApplicationController
  def index
    @items = Item.where(category_id: 8..9).order('updated_at DESC')
  end

  def search
    selection = params[:category]
    @items = Item.sort(selection)
  end
end

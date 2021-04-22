# frozen_string_literal: true

class EquipmentsController < ApplicationController
  def index
    @items = Item.where(category_id: 10).order('updated_at DESC')
  end
end

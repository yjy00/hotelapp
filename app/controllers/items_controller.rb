# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :get_item, only: %i(edit show update destroy)

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      case @item.category_id
      when 2..7
        redirect_to foods_path
      when 8..9
        redirect_to beverages_path
      else
        redirect_to equipments_path
      end
    else
      render :new
    end
  end

  def edit; end

  def show; end

  def update
    if @item.update(item_params)
      case @item.category_id
      when 2..7
        redirect_to foods_path
      when 8..9
        redirect_to beverages_path
      else
        redirect_to equipments_path
      end
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      case @item.category_id
      when 2..7
        redirect_to foods_path
      when 8..9
        redirect_to beverages_path
      else
        redirect_to equipments_path
      end
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :count, :category_id, :place_id, :detail)
  end

  def get_item
    @item = Item.find(params[:id])
  end
end

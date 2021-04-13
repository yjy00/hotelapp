class ItemsController < ApplicationController
  def index
    @items = Item.order('updated_at DESC')
  end

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

  def edit
    @item = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
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
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :count, :category_id, :place_id, :detail)
  end
end
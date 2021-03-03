class BeveragesController < ApplicationController

  def index
    @beverages = Beverage.order('updated_at DESC')
  end

  def new
    @beverage = Beverage.new
  end

  def create
    @beverage = Beverage.new(beverage_params)
    if @beverage.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @beverage = Beverage.find(params[:id])
  end

  def show
    @beverage = Beverage.find(params[:id])
  end

  def update
    @beverage = Beverage.find(params[:id])
    if @beverage.update(beverage_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def beverage_params
    params.require(:beverage).permit(:image, :name, :category_id, :count_id, :place_id, :detail)
  end
end

class FoodsController < ApplicationController
  def index
    @foods = Food.order('updated_at DESC')
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def show
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def food_params
    params.require(:food).permit(:image, :name, :count, :place_id, :detail)
  end
end

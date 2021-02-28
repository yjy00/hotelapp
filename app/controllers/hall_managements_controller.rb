class HallManagementsController < ApplicationController

  def index
    @halls = Hall.order('updated_at DESC')
  end

  def new
    @hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)
    # binding.pry
    if @hall.save
      redirect_to hall_managements_path
    else
      render :new
    end
  end

  def edit
    @hall = Hall.find(params[:id])
  end

  def show
    @hall = Hall.find(params[:id])
    
  end

  def update
    @hall = Hall.find(params[:id])
    if @hall.update(hall_params)
      redirect_to hall_managements_path
    else
      render :edit
    end
  end

  private

  def hall_params
    params.require(:hall).permit(:image, :name, :category_id, :count_id, :place_id, :detail)
  end

end

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
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @hall = Hall.find(params[:id])
  end

  private

  def hall_params
    params.require(:hall).permit(:image, :name, :detail)
  end

end

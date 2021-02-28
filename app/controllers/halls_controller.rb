class HallsController < ApplicationController


  def index
  end

  def new
    @hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)
    if @hall.save
      redirect_to halls_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def hall_params
    params.require(:hall).permit(:image, :name, :detail, :count)
  end
end

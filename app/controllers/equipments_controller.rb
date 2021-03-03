class EquipmentsController < ApplicationController

  def index
    @equipment = Equipment.order('updated_at DESC')
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit()
  end
end

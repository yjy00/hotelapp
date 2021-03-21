class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.order('updated_at DESC')
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

  def destroy
    @equipment = Equipment.find(params[:id])
    if @equipment.destroy
      redirect_to root_path
    else
      redirect_to :edit
    end
  end

  private

  def equipment_params
    params.require(:equipment).permit(:image, :name, :category, :count, :place_id, :detail)
  end
end
# frozen_string_literal: true

class MenusController < ApplicationController
  def index
    @menus = Menu.order('updated_at DESC')
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render :new
    end
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to menus_path
    else
      render :edit
    end
  end

  def destroy
    @menu = Menu.find(params[:id])
    if @menu.destroy
      redirect_to menus_path
    else
      render :edit
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :category_id, :information, :image)
  end
end

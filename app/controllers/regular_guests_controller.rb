# frozen_string_literal: true

class RegularGuestsController < ApplicationController
  def index
    @regular_guests = RegularGuest.order('updated_at DESC')
  end

  def new
    @regular_guest = RegularGuest.new
  end

  def create
    @regular_guest = RegularGuest.new(regular_guest_params)
    if @regular_guest.save
      redirect_to regular_guests_path
    else
      render :new
    end
  end

  def edit
    @regular_guest = RegularGuest.find(params[:id])
  end

  def update
    @regular_guest = RegularGuest.find(params[:id])
    if @regular_guest.update(regular_guest_params)
      redirect_to regular_guests_path
    else
      render :edit
    end
  end

  def destroy
    @regular_guest = RegularGuest.find(params[:id])
    if @regular_guest.destroy
      redirect_to regular_guests_path
    else
      render :edit
    end
  end

  private

  def regular_guest_params
    params.require(:regular_guest).permit(:name, :status_id, :member_number, :information)
  end
end

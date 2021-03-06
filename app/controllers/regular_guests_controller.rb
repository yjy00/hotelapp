# frozen_string_literal: true

class RegularGuestsController < ApplicationController
  before_action :get_regularguest, only: %i(edit update destroy)

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

  def edit; end

  def update
    if @regular_guest.update(regular_guest_params)
      redirect_to regular_guests_path
    else
      render :edit
    end
  end

  def destroy
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

  def get_regularguest
    @regular_guest = RegularGuest.find(params[:id])
  end
end

# frozen_string_literal: true

class DailyHandoversController < ApplicationController
  before_action :get_dailyhandover, only: %i(edit update)

  def index
    @daily_handovers = DailyHandover.order('created_at DESC').page(params[:page]).per(1)
  end

  def new
    @daily_handover = DailyHandover.new
  end

  def create
    @daily_handover = DailyHandover.new(daily_handover_params)
    if @daily_handover.save
      redirect_to daily_handovers_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @daily_handover.update(daily_handover_params)
      redirect_to daily_handovers_path
    else
      render :edit
    end
  end

  private

  def daily_handover_params
    params.require(:daily_handover).permit(:month, :date, :daily_remark, :to_morning, :to_evening, :for_tomorrow)
  end

  def get_dailyhandover
    @daily_handover = DailyHandover.find(params[:id])
  end
end

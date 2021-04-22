# frozen_string_literal: true

class PeopleManagementsController < ApplicationController
  def index
    @people_managements = PeopleManagement.order('updated_at DESC')
  end

  # def new
  #   @people_management = PeopleManagement.new
  # end

  # def create
  #   @people_management = PeopleManagement.new(people_management_params)
  #   if @people_management.save
  #     redirect_to other_functions_path
  #   else
  #     render :new
  #   end
  # end

  def edit
    # ApplicationControllerでpeople_management(１)を取得しているため、ここでは取得していない
  end

  def update
    # ApplicationControllerでpeople_management(１)を取得しているため、ここでは取得していない
    if @people_management.update(people_management_params)
      redirect_to other_functions_path
    else
      render :edit
    end
  end

  private

  def people_management_params
    params.require(:people_management).permit(:morning, :waiter, :kitchen, :dish_wash)
  end
end

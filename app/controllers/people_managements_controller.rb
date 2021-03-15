class PeopleManagementsController < ApplicationController
  def edit
    # ApplicationControllerでpeople_management(１)を取得しているため、ここでは取得していない
  end

  def update
    # ApplicationControllerでpeople_management(１)を取得しているため、ここでは取得していない
    if @people_management.update(people_management_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def people_management_params
    params.require(:people_management).permit(:morning, :waiter, :kitchen, :dish_wash)
  end
end

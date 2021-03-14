class PeopleManagementsController < ApplicationController

  def edit
    @people_management = PeopleManagement.find(1)
  end

  def update
    @people_management = PeopleManagement.find(1)
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

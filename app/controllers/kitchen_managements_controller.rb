# class KitchenManagementsController < ApplicationController
#   def index
#     @kitchens = Kitchen.order('updated_at DESC')
#   end

#   def new
#     @kitchen = Kitchen.new
#   end

#   def create
#     @kitchen = Kitchen.new(kitchen_params)
#     # binding.pry
#     if @kitchen.save
#       redirect_to kitchen_managements_path
#     else
#       render :new
#     end
#   end

#   def edit
#     @kitchen = Kitchen.find(params[:id])
#   end

#   def show
#     @kitchen = Kitchen.find(params[:id])
#   end

#   def update
#     @kitchen = Kitchen.find(params[:id])
#     if @kitchen.update(kitchen_params)
#       redirect_to kitchen_managements_path
#     else
#       render :edit
#     end
#   end

#   private

#   def kitchen_params
#     params.require(:kitchen).permit(:name, :category_id, :count_id, :place_id, :detail, :image)
#   end
# end

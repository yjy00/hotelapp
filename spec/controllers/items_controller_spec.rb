# # frozen_string_literal: true

# require 'rails_helper'

# describe ItemsController, type: :controller do
#   describe 'GET #new' do
#     it 'new.html.erbに遷移すること' do
#       get :new
#       expect(response).to render_template :new
#     end
#   end

#   describe 'GET #edit' do
#     it '@itemに正しい値が入っていること' do
#       item = create(:item)
#       get :edit, params: { id: item }
#       expect(assigns(:item)).to eq item
#     end

#     it 'edit.html.erbに遷移すること' do
#       item = create(:item)
#       get :edit, params: { id: item }
#       expect(response).to render_template :edit
#     end
#   end

#   describe 'GET #show' do
#     it 'show.html.erbに遷移すること' do
#       # get :show, params: {  id: 1 }
#     end
#   end

#   describe 'GET #index' do
#     it '@itemに正しい値が入っていること' do
#       # items = create_list(:item, 3)
#       # get :index
#       # expect(assigns(:items)).to match(items.sort{ |a, b| b.created_at <=> a.created_at } )
#     end
#   end

#   it 'index.html.erbに遷移すること' do
#     get :index
#     expect(response).to render_template :index
#   end
# end

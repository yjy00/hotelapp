# frozen_string_literal: true

require 'rails_helper'

describe KitchenOrdersController, type: :controller do

  describe 'GET #index' do
    it "@itemに正しい値が入っていること" do
      # items = create_list(:item, 3) 
      # get :index
      # expect(assigns(:items)).to match(items.sort{ |a, b| b.created_at <=> a.created_at } )
  end
    end

    it "index.html.erbに遷移すること" do
      get :index
      expect(response).to render_template :index
    end

end

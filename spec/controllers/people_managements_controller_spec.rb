# frozen_string_literal: true

require 'rails_helper'

describe PeopleManagementsController, type: :controller do

  describe 'GET #edit' do
    it "@people_managementに正しい値が入っていること" do
      # people_management = create(:people_management)
      # get :edit, params: { id: people_management }
      # expect(assigns(:people_management)).to eq people_management

    end

    it "edit.html.erbに遷移すること" do
      people_management = create(:people_management)
      get :edit, params: { id: people_management }
      expect(response).to render_template :edit
    end

end
end

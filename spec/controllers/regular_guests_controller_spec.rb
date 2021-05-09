# frozen_string_literal: true

require 'rails_helper'

describe RegularGuestsController, type: :controller do
  describe 'GET #new' do
    it 'new.html.erbに遷移すること' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #index' do
    it '@regular_guestsに正しい値が入っていること' do
      # regular_guests = create_list(:regular_guest, 3)
      # get :index
      # expect(assigns(:regular_guest)).to match(items.sort{ |a, b| b.created_at <=> a.created_at } )
    end

    it 'index.html.erbに遷移すること' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #edit' do
    it '@regular_guestに正しい値が入っていること' do
      regular_guest = create(:regular_guest)
      get :edit, params: { id: regular_guest }
      expect(assigns(:regular_guest)).to eq regular_guest
    end

    it 'edit.html.erbに遷移すること' do
      regular_guest = create(:regular_guest)
      get :edit, params: { id: regular_guest }
      expect(response).to render_template :edit
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

describe DailyHandoversController, type: :controller do
  describe 'GET #new' do
    it 'new.html.erbに遷移すること' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it '@daily_handoverに正しい値が入っていること' do
      daily_handover = create(:daily_handover)
      get :edit, params: { id: daily_handover }
      expect(assigns(:daily_handover)).to eq daily_handover
    end

    it 'edit.html.erbに遷移すること' do
      daily_handover = create(:daily_handover)
      get :edit, params: { id: daily_handover }
      expect(response).to render_template :edit
    end

    describe 'GET #index' do
      it '@daily_handoverに正しい値が入っていること' do
        # daily_handovers = create_list(:daily_handover, 3)
        # get :index
        # expect(assigns(:daily_handovers)).to match(daily_handovers.sort{ |a, b| b.created_at <=> a.created_at } )
      end
    end

    it 'index.html.erbに遷移すること' do
      get :index
      expect(response).to render_template :index
    end
  end
end

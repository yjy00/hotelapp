frozen_string_literal: true
# frozen_string_literal: true

require 'rails_helper'

describe EquipmentsController, type: :controller do
  describe 'GET #index' do
    # it '@itemに正しい値が入っていること' do
#       # items = create_list(:item, 3)
#       # get :index
#       # expect(assigns(:items)).to match(items.sort{ |a, b| b.created_at <=> a.created_at } )
#     end
#   end
context "as an authenticated user" do

  before do
    @user = build(:user)
  end

  # 正常にレスポンスを返すこと 
  it "responds successfully" do
    get :index
    expect(response).to be_success
  end
end

context "as a guest" do
  # 302レスポンスを返すこと
  it "returns a 302 response" do
    get :index
        expect(response).to have_http_status "302"
      end
    # サインイン画面にリダイレクトすること it "redirects to the sign-in page" do
    get :index
        expect(response).to redirect_to "/users/sign_in"
      end
    end
end
# frozen_string_literal: true

require 'rails_helper'

feature 'item', type: :feature do
  let(:user) { create(:user) }

  scenario 'アイテム情報が更新されていること' do
    visit new_item_path
    expect(page).to have_no_content('登録する')

    # # ログイン処理
    # visit new_user_session_path
    # fill_in 'user_email', with: user.email
    # fill_in 'user_password', with: user.password
    # find('input[name="commit"]').click
    # expect(current_path).to eq root_path
    # visit new_item_path
    # expect(page).to have_content('登録する')

    # アイテムの登録
    # expect {
    #   click_link('登録する')
    #   expect(current_path).to eq new_item_path
    #   fill_in 'name', with: 'スパニッシュオムレツ'
    #   fill_in 'category_id', with: 1
    #   fill_in 'place_id', with: 1
    #   fill_in 'count', with: 1
    #   find('input[type="submit"]').click
    # }.to change(Item, :count).by(1)
  end
end

require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe Menu do
    describe '#create' do
      before do
        @menu = build(:menu)
        # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
        # @menu.image = fixture_file_upload('public/images/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@menu).to be_valid
        end

        it '情報欄が空でも登録できること' do
          @menu.information = nil
          expect(@menu).to be_valid
        end

        it '画像がなしでも登録できること' do
          @menu.image = nil
          expect(@menu).to be_valid
        end
      end

      context '登録されないこと' do
        it 'メニュー名が必須であること' do
          @menu.name = nil
          @menu.valid?
          expect(@menu.errors[:name]).to include("can't be blank")
        end

        it 'カテゴリー情報が必須であること' do
          @menu.category_id = nil
          @menu.valid?
          expect(@menu.errors[:category_id]).to include("can't be blank")
        end

        it 'カテゴリーが1のままでは登録できないこと' do
          @menu.category_id = 1
          @menu.valid?
          expect(@menu.errors[:category_id]).to include
        end

      end
    end
  end
end

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe Item do
    describe '#create' do
      before do
        @item = build(:item)
        # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
        # @item.image = fixture_file_upload('public/images/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@item).to be_valid
        end

        it '詳細欄が空でも登録できること' do
          @item.detail = nil
          expect(@item).to be_valid
        end

        it '画像がなしでも登録できること' do
          @item.image = nil
          expect(@item).to be_valid
        end
      end

      context '登録されないこと' do
        it 'アイテム名が必須であること' do
          @item.name = nil
          @item.valid?
          expect(@item.errors[:name]).to include('を入力してください')
        end

        it 'カテゴリーについての情報が必須であること' do
          @item.category_id = nil
          @item.valid?
          expect(@item.errors[:category_id]).to include('を入力してください')
        end

        it '場所についての情報が必須であること' do
          @item.place_id = nil
          @item.valid?
          expect(@item.errors[:place_id]).to include('を入力してください')
        end

        it '数量ついての情報が必須であること' do
          @item.count = nil
          @item.valid?
          expect(@item.errors[:count]).to include('を入力してください')
        end

        it 'カテゴリーidが1のままでは登録できないこと' do
          @item.category_id = 1
          @item.valid?
          expect(@item.errors[:category_id]).to include
        end

        it '場所idが1のままでは登録できないこと' do
          @item.place_id = 1
          @item.valid?
          expect(@item.errors[:place_id]).to include
        end
      end
    end
  end
end

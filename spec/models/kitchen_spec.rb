require 'rails_helper'

describe Kitchen do
  describe '#create' do
    before do
      @kitchen = build(:kitchen)
      # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
      # @kitchen.image = fixture_file_upload('public/images/RSpec.image.png')
    end

    context '登録されること' do
      it '全てのフォームが入力されていれば登録できること' do
        expect(@kitchen).to be_valid
      end

      it '詳細欄が空でも登録できること' do
        @kitchen.detail = nil
        expect(@kitchen).to be_valid
      end

      it '画像がなしでも登録できること' do
        @kitchen.image = nil
        expect(@kitchen).to be_valid
      end
    end

    context '登録されないこと' do
      it 'アイテム名が必須であること' do
        @kitchen.name = nil
        @kitchen.valid?
        expect(@kitchen.errors[:name]).to include("can't be blank")
      end

      it 'カテゴリーの情報が必須であること' do
        @kitchen.category_id = nil
        @kitchen.valid?
        expect(@kitchen.errors[:category_id]).to include("can't be blank")
      end

      it '数量ついての情報が必須であること' do
        @kitchen.count_id = nil
        @kitchen.valid?
        expect(@kitchen.errors[:count_id]).to include("can't be blank")
      end

      it '場所についての情報が必須であること' do
        @kitchen.place_id = nil
        @kitchen.valid?
        expect(@kitchen.errors[:place_id]).to include("can't be blank")
      end

      it 'カテゴリーidが1のままでは登録できないこと' do
        @kitchen.category_id = 1
        @kitchen.valid?
        expect(@kitchen.errors[:prefecture_id]).to include
      end

      it '数量id1のままでは登録できないこと' do
        @kitchen.count_id = 1
        @kitchen.valid?
        expect(@kitchen.errors[:count_id]).to include
      end

      it '場所idが1のままでは登録できないこと' do
        @kitchen.place_id = 1
        @kitchen.valid?
        expect(@kitchen.errors[:place_id]).to include
      end
    end
  end
end

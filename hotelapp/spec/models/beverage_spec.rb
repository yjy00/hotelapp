require 'rails_helper'

RSpec.describe Beverage, type: :model do
  describe Beverage do
    describe '#create' do
      before do
        @beverage = build(:beverage)
        # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
        # @beverage.image = fixture_file_upload('public/images/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@beverage).to be_valid
        end

        it '詳細欄が空でも登録できること' do
          @beverage.detail = nil
          expect(@beverage).to be_valid
        end

        it '画像がなしでも登録できること' do
          @beverage.image = nil
          expect(@beverage).to be_valid
        end
      end

      context '登録されないこと' do
        it 'アイテム名が必須であること' do
          @beverage.name = nil
          @beverage.valid?
          expect(@beverage.errors[:name]).to include("can't be blank")
        end

        it '数量ついての情報が必須であること' do
          @beverage.count = nil
          @beverage.valid?
          expect(@beverage.errors[:count]).to include("can't be blank")
        end

        it '場所についての情報が必須であること' do
          @beverage.place_id = nil
          @beverage.valid?
          expect(@beverage.errors[:place_id]).to include("can't be blank")
        end

        it '場所idが1のままでは登録できないこと' do
          @beverage.place_id = 1
          @beverage.valid?
          expect(@beverage.errors[:place_id]).to include
        end
      end
    end
  end
end

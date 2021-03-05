require 'rails_helper'

RSpec.describe Food, type: :model do
  describe Food do
    describe '#create' do
      before do
        @food = build(:food)
        # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
        # @food.image = fixture_file_upload('public/images/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@food).to be_valid
        end

        it '詳細欄が空でも登録できること' do
          @food.detail = nil
          expect(@food).to be_valid
        end

        it '画像がなしでも登録できること' do
          @food.image = nil
          expect(@food).to be_valid
        end
      end

      context '登録されないこと' do
        it 'アイテム名が必須であること' do
          @food.name = nil
          @food.valid?
          expect(@food.errors[:name]).to include("can't be blank")
        end

        it '数量ついての情報が必須であること' do
          @food.count_id = nil
          @food.valid?
          expect(@food.errors[:count_id]).to include("can't be blank")
        end

        it '場所についての情報が必須であること' do
          @food.place_id = nil
          @food.valid?
          expect(@food.errors[:place_id]).to include("can't be blank")
        end

        it '数量idが1のままでは登録できないこと' do
          @food.count_id = 1
          @food.valid?
          expect(@food.errors[:count_id]).to include
        end

        it '場所idが1のままでは登録できないこと' do
          @food.place_id = 1
          @food.valid?
          expect(@food.errors[:place_id]).to include
        end
      end
    end
  end
end

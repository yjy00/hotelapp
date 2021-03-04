require 'rails_helper'

RSpec.describe Equipment, type: :model do

  describe Equipment do
    describe '#create' do
      before do
        @equipment = build(:equipment)
        # 前のアプリを参考に書いたが、これをコメントアウトを外すとエラーになる
        # @equipment.image = fixture_file_upload('public/images/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@equipment).to be_valid
        end

        it '詳細欄が空でも登録できること' do
          @equipment.detail = nil
          expect(@equipment).to be_valid
        end

        it '画像がなしでも登録できること' do
          @equipment.image = nil
          expect(@equipment).to be_valid
        end
      end

      context '登録されないこと' do
        it 'アイテム名が必須であること' do
          @equipment.name = nil
          @equipment.valid?
          expect(@equipment.errors[:name]).to include("can't be blank")
        end

        it '数量ついての情報が必須であること' do
          @equipment.count_id = nil
          @equipment.valid?
          expect(@equipment.errors[:count_id]).to include("can't be blank")
        end

        it '場所についての情報が必須であること' do
          @equipment.place_id = nil
          @equipment.valid?
          expect(@equipment.errors[:place_id]).to include("can't be blank")
        end

        it '数量idが1のままでは登録できないこと' do
          @equipment.count_id = 1
          @equipment.valid?
          expect(@equipment.errors[:count_id]).to include
        end

        it '場所idが1のままでは登録できないこと' do
          @equipment.place_id = 1
          @equipment.valid?
          expect(@equipment.errors[:place_id]).to include
        end
      end
  end
end
end
require 'rails_helper'
RSpec.describe Hall, type: :model do

  describe Hall do
    describe '#create' do
      before do
        @hall = build(:hall)
        @hall.image = fixture_file_upload('/files/RSpec.image.png')
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@hall).to be_valid
        end

        it '詳細欄が空でも登録できること' do
          @hall.detail = nil
          expect(@hall).to be_valid
        end

        # it '画像がなしでも登録できること' do
        #   @hall.detail = nil
        #   expect(@hall).to be_valid
        end
      end

      context '登録されないこと' do
        it 'アイテム名が必須であること' do
          @hall.name = nil
          @hall.valid?
          expect(@hall.errors[:name]).to include("can't be blank")
        end

        it 'カテゴリーの情報が必須であること' do
          @hall.category_id = nil
          @hall.valid?
          expect(@hall.errors[:category_id]).to include("can't be blank")
        end

        it '場所についての情報が必須であること' do
          @hall.place_id = nil
          @hall.valid?
          expect(@hall.errors[:place_id]).to include("can't be blank")
        end

        it '数量ついての情報が必須であること' do
          @hall.count_id = nil
          @hall.valid?
          expect(@hall.errors[:count_id]).to include("can't be blank")
        end

        it 'カテゴリーidが0のままでは登録できないこと' do
          @hall.category_id = 1
          @hall.valid?
          expect(@hall.errors[:prefecture_id]).to include
        end
        
        it '場所idが0のままでは登録できないこと' do
          @hall.place_id = 1
          @hall.valid?
          expect(@hall.errors[:place_id]).to include
        end
        
        it '数量id0のままでは登録できないこと' do
          @hall.count_id = 1
          @hall.valid?
          expect(@hall.errors[:count_id]).to include
        end

      end
    end
  end
end



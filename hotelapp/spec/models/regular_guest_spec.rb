require 'rails_helper'

RSpec.describe RegularGuest, type: :model do
  describe RegularGuest do
    describe '#create' do
      before do
        @regular_guest = build(:regular_guest)
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@regular_guest).to be_valid
        end

        it 'ステータスが1でも登録できること' do
          @regular_guest.status_id = 1
          expect(@regular_guest).to be_valid
        end

        it '会員番号がなくても登録できること' do
          @regular_guest.member_number = nil
          expect(@regular_guest).to be_valid
        end

        it 'ゲスト情報がなくても登録できること' do
          @regular_guest.information = nil
          expect(@regular_guest).to be_valid
        end
      end

      context '登録されないこと' do
        it 'ゲストの名前が必須であること' do
          @regular_guest.name = nil
          @regular_guest.valid?
          expect(@regular_guest.errors[:name]).to include('を入力してください')
        end

        it '数量idが1のままでは登録できないこと' do
          @regular_guest.status_id = 1
          @regular_guest.valid?
          expect(@regular_guest.errors[:status_id]).to include
        end

        it '会員番号が文字では登録できないこと' do
          @regular_guest.member_number = '高松聡'
          @regular_guest.valid?
          expect(@regular_guest.errors[:member_number]).to include
        end
      end
    end
  end
end

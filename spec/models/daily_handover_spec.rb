# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DailyHandover, type: :model do
  describe DailyHandover do
    describe '#create' do
      before do
        @daily_handover = build(:daily_handover)
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@daily_handover).to be_valid
        end

        it '今日のリマークが空欄でも登録できること' do
          @daily_handover.daily_remark = nil
          expect(@daily_handover).to be_valid
        end

        it '早番へが空欄でも登録できること' do
          @daily_handover.to_morning = nil
          expect(@daily_handover).to be_valid
        end

        it '遅番へが空欄でも登録できること' do
          @daily_handover.to_evening = nil
          expect(@daily_handover).to be_valid
        end

        it '明日へが空欄でも登録できること' do
          @daily_handover.for_tomorrow = nil
          expect(@daily_handover).to be_valid
        end
      end

      context '登録されないこと' do
        it '月が必須であること' do
          @daily_handover.month = nil
          @daily_handover.valid?
          expect(@daily_handover.errors[:month]).to include('をご入力ください')
        end

        it '日が必須であること' do
          @daily_handover.date = nil
          @daily_handover.valid?
          expect(@daily_handover.errors[:date]).to include('をご入力ください')
        end
      end
    end
  end
end

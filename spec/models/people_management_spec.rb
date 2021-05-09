# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PeopleManagement, type: :model do
  describe PeopleManagement do
    describe '#create' do
      before do
        @people_management = build(:people_management)
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@people_management).to be_valid
        end
      end

      context '登録されないこと' do
        it '朝食人数が必須であること' do
          @people_management.morning = nil
          @people_management.valid?
          expect(@people_management.errors[:morning]).to include('をご入力ください')
        end

        it 'ホールスタッフの人数が必須であること' do
          @people_management.waiter = nil
          @people_management.valid?
          expect(@people_management.errors[:waiter]).to include('をご入力ください')
        end

        it 'キッチンスタッフの人数が必須であること' do
          @people_management.kitchen = nil
          @people_management.valid?
          expect(@people_management.errors[:kitchen]).to include('をご入力ください')
        end

        it '洗い場の人数が必須であること' do
          @people_management.dish_wash = nil
          @people_management.valid?
          expect(@people_management.errors[:dish_wash]).to include('をご入力ください')
        end

        it '朝食人数が-1では登録できないこと' do
          @people_management.morning = -1
          @people_management.valid?
          expect(@people_management.errors[:morning]).to include
        end

        it 'ホールスタッフ人数が-1では登録できないこと' do
          @people_management.waiter = -1
          @people_management.valid?
          expect(@people_management.errors[:waiter]).to include
        end

        it 'キッチンスタッフ人数が-1では登録できないこと' do
          @people_management.kitchen = -1
          @people_management.valid?
          expect(@people_management.errors[:kitchen]).to include
        end

        it '洗い場人数がが-1では登録できないこと' do
          @people_management.dish_wash = -1
          @people_management.valid?
          expect(@people_management.errors[:dish_wash]).to include
        end

      end
    end
  end
end
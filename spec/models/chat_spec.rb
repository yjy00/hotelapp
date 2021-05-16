# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Chat, type: :model do
  describe Chat do
    describe '#create' do
      before do
        @chat = build(:chat)
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@chat).to be_valid
        end
      end

      context '登録されないこと' do
        it 'fromが必須であること' do
          @chat.from_id = nil
          @chat.valid?
          expect(@chat.errors[:from_id]).to include('をご入力ください', 'は数値でご入力ください')
        end

        it 'byが必須であること' do
          @chat.by = nil
          @chat.valid?
          expect(@chat.errors[:by]).to include('をご入力ください')
        end

        it 'fromが1のままでは登録できないこと' do
          @chat.from_id = 1
          @chat.valid?
          expect(@chat.errors[:from_id]).to include
        end
      end
    end
  end
end

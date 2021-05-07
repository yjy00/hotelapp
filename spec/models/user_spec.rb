# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe User do
    describe '#create' do
      before do
        @user = build(:user)
      end

      context '登録されること' do
        it '全てのフォームが入力されていれば登録できること' do
          expect(@user).to be_valid
        end
      end

      context '登録されないこと' do
        it 'ホテル名がない場合は登録できないこと' do
          @user.name = nil
          @user.valid?
          expect(@user.errors[:name]).to include('をご入力ください')
        end

        it 'メールアドレスがない場合は登録できないこと' do
          @user.email = nil
          @user.valid?
          expect(@user.errors[:email]).to include('をご入力ください')
        end

        it 'メールアドレスが一意性であること' do
          user = create(:user)
          another_user = build(:user, email: user.email)
          another_user.valid?
          expect(another_user.errors[:email]).to include('はすでに存在します')
        end

        it 'メールアドレスは@がない場合登録されないこと' do
          @user.email = 'sgtb.fb'
          @user.valid?
          expect(@user.errors[:email]).to include('が条件を満たしていません')
        end

        it 'パスワードがなければ登録されないこと' do
          @user.password = nil
          @user.valid?
          expect(@user.errors[:password]).to include('をご入力ください', 'が条件を満たしていません')
        end

        it 'パスワードは6文字未満で登録されないこと' do
          @user.password = '0000a'
          @user.valid?
          expect(@user.errors[:password]).to include('は6文字以上で入力してください', 'が条件を満たしていません')
        end

        it 'パスワードは半角英字だけでは登録されないこと' do
          @user.password = 'aaaaaa'
          @user.valid?
          expect(@user.errors[:password]).to include
        end

        it 'パスワードは半数字のみでは登録されないこと' do
          @user.password = '0000000'
          @user.valid?
          expect(@user.errors[:password]).to include('が条件を満たしていません')
        end

        it 'パスワードは確認用が入力されないと登録されないこと' do
          @user.password_confirmation = nil
          @user.valid?
          expect(@user.errors[:password_confirmation]).to include
        end

        it 'パスワードは確認用だけでは登録されないこと' do
          @user.password = nil
          @user.password_confirmation = '00000a'
          @user.valid?
          expect(@user.errors[:password]).to include('をご入力ください', 'が条件を満たしていません')
        end

        it 'マネージャー名が空欄では登録されないこと' do
          @user.managers_name = nil
          @user.valid?
          expect(@user.errors[:managers_name]).to include('をご入力ください')
        end
      end
    end
  end
end

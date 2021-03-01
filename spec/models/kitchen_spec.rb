# require 'rails_helper'

# describe Good do
#   describe '#create' do
#     before do
#       @good = build(:good)
#       @good.image = fixture_file_upload('/files/duffyのコピー.jpeg')
#     end

#     context '登録されること' do
#       it '全てのフォームが入力されていれば登録できること' do
#         expect(@good).to be_valid
#       end
#     end

#     context '登録されないこと' do
#       it '画像は1枚必須であること(ActiveStorageを使用すること)' do
#         @good.image = nil
#         @good.valid?
#         expect(@good.errors[:image]).to include('を入力してください')
#       end

#       it '商品名が必須であること' do
#         @good.name = nil
#         @good.valid?
#         expect(@good.errors[:name]).to include('を入力してください')
#       end

#       it '商品の説明が必須であること' do
#         @good.detail = nil
#         @good.valid?
#         expect(@good.errors[:detail]).to include('を入力してください')
#       end

#       it 'カテゴリーの情報が必須であること' do
#         @good.category_id = nil
#         @good.valid?
#         expect(@good.errors[:category_id]).to include('を入力してください')
#       end

#       it '商品の状態についての情報が必須であること' do
#         @good.condition_id = nil
#         @good.valid?
#         expect(@good.errors[:condition_id]).to include('を入力してください')
#       end

#       it '配送料の負担についての情報が必須であること' do
#         @good.whopay_id = nil
#         @good.valid?
#         expect(@good.errors[:whopay_id]).to include('を入力してください')
#       end

#       it '発送元の地域についての情報が必須であること' do
#         @good.prefecture_id = nil
#         @good.valid?
#         expect(@good.errors[:prefecture_id]).to include('を入力してください')
#       end

#       it '発送までの日数についての情報が必須であること' do
#         @good.whensend_id = nil
#         @good.valid?
#         expect(@good.errors[:whensend_id]).to include('を入力してください')
#       end

#       it '価格についての情報が必須であること' do
#         @good.price = nil
#         @good.valid?
#         expect(@good.errors[:price]).to include('を入力してください')
#       end

#       it '価格299では登録できないこと' do
#         @good.price = '299'
#         @good.valid?
#         expect(@good.errors[:price]).to include('は300以上の値にしてください')
#       end

#       it '価格300ちょうどで登録できること' do
#         @good.price = '300'
#         @good.valid?
#         expect(@good.errors[:price]).to include
#       end

#       it '価格が10,000,000では登録できないこと' do
#         @good.price = '10000000'
#         @good.valid?
#         expect(@good.errors[:price]).to include('は9999999以下の値にしてください')
#       end

#       it '価格が9,999,999ちょうどで登録できること' do
#         @good.price = '9999999'
#         @good.valid?
#         expect(@good.errors[:price]).to include
#       end

#       it '販売価格は半角数字のみ保存可能であること' do
#         @good.price = '３００'
#         @good.valid?
#         expect(@good.errors[:price]).to include('は数値で入力してください')
#       end
#     end
#   end
# end

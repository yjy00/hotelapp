# frozen_string_literal: true

FactoryBot.define do
  factory :daily_handover do
    month                    { 1 }
    date                     { 1 }
    daily_remark             { 'ランチとディナーNew Years Buffet開催。' }
    to_morning               { 'お子様連れが多いと思いますので、子供椅子の確保をお願いします。' }
    to_evening               { '忙しくなると思うので、ライム等多めに準備を忘れないようにしてください。' }
    for_tomorrow             { '明日の魚は鮭だそうです。' }
    created_at               { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }

  end
end

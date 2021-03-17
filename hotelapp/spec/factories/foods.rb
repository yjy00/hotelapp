FactoryBot.define do
  factory :food do
    name                  { '知多和牛のステーキ' }
    place_id              { 3 }
    count                 { 3 }
    detail                { '焼き加減を選べます。' }
  end
end

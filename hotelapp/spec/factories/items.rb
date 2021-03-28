FactoryBot.define do
  factory :item do
    name                  { '知多和牛のステーキ' }
    category_id           { 3 }
    place_id              { 3 }
    count                 { 3 }
    detail                { '焼き加減を選べます。' }
  end
end

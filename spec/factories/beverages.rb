FactoryBot.define do
  factory :beverage do
    name                  { '知多ウイスキー' }
    place_id              { 2 }
    count                 { 3 }
    detail                { 'ハイボールのために作られたウイスキー' }
  end
end

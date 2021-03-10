FactoryBot.define do
  factory :regular_guest do
    name                  { '吉田敦' }
    status_id              { 2 }
    member_number              { 33326482746 }
    information                { 'Titaniumのゲストです。名前を覚え、しっかり挨拶できるようにしましょう。' }
  end
end

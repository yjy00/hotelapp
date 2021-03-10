FactoryBot.define do
  factory :chat do
    from_id         { 2 }
    by              { 'Masa' }
    message              { '今日の予約は３件です。' }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :regular_guest do
    name                  { '吉田敦' }
    status_id             { 2 }
    member_number         { 333_264_827 }
    information           { 'プラチナのゲストです。名前を覚え、しっかり挨拶できるようにしましょう。' }
  end
end

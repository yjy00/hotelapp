# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name                  { 'Sheroton Gran Tokyu Beach' }
    # email                 { 'sgtb.fb@sheroton.com' }
    sequence(:email)      {Faker::Internet.email}
    password              { 'stbgmskf2fj' }
    password_confirmation { 'stbgmskf2fj' }
    managers_name         { '田口 美沙子' }

  end
end

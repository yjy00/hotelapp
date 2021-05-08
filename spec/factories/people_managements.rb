# frozen_string_literal: true

FactoryBot.define do
  factory :people_management do
    morning          { 200 }
    waiter           { 4 }
    kitchen          { 4 }
    dish_wash        { 1 }
  end
end

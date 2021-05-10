# frozen_string_literal: true

class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '前菜' },
    { id: 3, name: 'メインディッシュ' },
    { id: 4, name: 'デザート' },
    { id: 5, name: 'サラダ' },
    { id: 6, name: 'フルーツ' },
    { id: 7, name: 'バーメニュー' },
    { id: 8, name: 'アルコール' },
    { id: 9, name: 'その他の飲み物' },
    { id: 10, name: '備品' }
  ]

  include ActiveHash::Associations
  has_many :items
end

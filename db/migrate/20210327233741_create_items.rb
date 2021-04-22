# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string  :name,        null: false
      t.integer :category_id, null: false
      t.integer :place_id,    null: false
      t.integer :count,       null: false
      t.text    :detail

      t.timestamps
    end
  end
end

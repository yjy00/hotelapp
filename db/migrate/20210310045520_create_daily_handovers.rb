# frozen_string_literal: true

class CreateDailyHandovers < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_handovers do |t|
      t.integer :month,          null: false
      t.integer :date,           null: false
      t.text    :daily_remark
      t.text    :to_morning
      t.text    :to_evening
      t.text    :for_tomorrow

      t.timestamps
    end
  end
end

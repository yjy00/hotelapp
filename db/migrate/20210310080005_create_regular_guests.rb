# frozen_string_literal: true

class CreateRegularGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :regular_guests do |t|
      t.string  :name,           null: false
      t.integer :status_id
      t.integer :member_number
      t.text    :information

      t.timestamps
    end
  end
end

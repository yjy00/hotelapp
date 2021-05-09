# frozen_string_literal: true

class CreatePeopleManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :people_managements do |t|
      t.integer :morning,    null: false
      t.integer :waiter,     null: false
      t.integer :kitchen,    null: false
      t.integer :dish_wash,  null: false

      t.timestamps
    end
  end
end

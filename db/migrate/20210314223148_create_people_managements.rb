class CreatePeopleManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :people_managements do |t|
      t.integer :morning
      t.integer :waiter
      t.integer :kitchen
      t.integer :dish_wash

      t.timestamps
    end
  end
end

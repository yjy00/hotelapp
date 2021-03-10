class CreateRegularGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :regular_guests do |t|

      t.timestamps
    end
  end
end

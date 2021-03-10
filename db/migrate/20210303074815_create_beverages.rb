class CreateBeverages < ActiveRecord::Migration[6.1]
  def change
    create_table :beverages do |t|
      t.string        :name,         null: false
      t.integer       :place_id,     null: false
      t.integer       :count,     null: false
      t.text          :detail

      t.timestamps
    end
  end
end

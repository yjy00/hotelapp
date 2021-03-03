class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string        :name,         null: false
      t.integer       :category_id,  null: false
      t.integer       :place_id,     null: false
      t.integer       :count_id,     null: false
      t.text          :detail

      t.timestamps
    end
  end
end

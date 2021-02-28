class CreateHalls < ActiveRecord::Migration[6.1]
  def change
    create_table :halls do |t|
      t.string        :name,         null: false
      # t.integer       :category_id,  null: false
      # t.integer       :place_id,     null: false
      # t.string       :count,        null: false
      t.text          :detail

      t.timestamps
    end
  end
end

class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string   :name,          null: false
      t.integer  :category_id,   null: false
      t.text     :information

      t.timestamps
    end
  end
end

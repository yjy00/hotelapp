class CreateKitchens < ActiveRecord::Migration[6.1]
  def change
    create_table :kitchens do |t|
      t.string    :name,   null: false
      t.text      :detail

      t.timestamps
    end
  end
end

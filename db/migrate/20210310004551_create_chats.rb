class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer    :from_id,   null: false
      t.string     :by,        null: false
      t.text       :message,   null: false

      t.timestamps
    end
  end
end

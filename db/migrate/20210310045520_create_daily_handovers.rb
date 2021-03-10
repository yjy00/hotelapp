class CreateDailyHandovers < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_handovers do |t|
      t.text :daily_remark
      t.text :to_morning
      t.text :to_evening
      t.text :for_tomorrow

      t.timestamps
    end
  end
end

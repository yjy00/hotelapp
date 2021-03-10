class CreateDailyHandovers < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_handovers do |t|

      t.timestamps
    end
  end
end

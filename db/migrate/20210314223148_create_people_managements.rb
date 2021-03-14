class CreatePeopleManagements < ActiveRecord::Migration[6.1]
  def change
    create_table :people_managements do |t|

      t.timestamps
    end
  end
end

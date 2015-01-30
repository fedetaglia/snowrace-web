class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :user_id
      t.string  :race_result
      t.timestamps
    end
  end
end

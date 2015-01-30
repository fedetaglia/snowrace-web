class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :app_id
      t.timestamps
    end
  end
end

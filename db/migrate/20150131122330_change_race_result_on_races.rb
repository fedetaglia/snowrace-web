class ChangeRaceResultOnRaces < ActiveRecord::Migration
  def up
    change_column :races, :race_result, :text
  end

  def down
    change_column :races, :race_result, :string
  end
end

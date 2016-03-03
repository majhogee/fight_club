class AddFightingPowerToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :fighting_power, :integer
  end
end

class AddExpPointsToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :exp_points, :integer
  end
end

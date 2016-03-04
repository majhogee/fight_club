class RemoveReference < ActiveRecord::Migration
  def change
  	remove_reference(:fights, :fighter, index: true, foreign_key: true)
  end
end

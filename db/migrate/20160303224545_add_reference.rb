class AddReference < ActiveRecord::Migration
  def change
  	add_reference(:fighters, :fight, index: true, foreign_key: true)
  end
end

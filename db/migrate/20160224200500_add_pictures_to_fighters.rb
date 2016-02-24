class AddPicturesToFighters < ActiveRecord::Migration
  def change
    add_column :fighters, :picture, :string
  end
end

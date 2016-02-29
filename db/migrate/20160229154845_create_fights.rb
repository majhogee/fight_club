class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.integer :fighter1_id
      t.integer :fighter2_id
      t.integer :result
      t.references :fighter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

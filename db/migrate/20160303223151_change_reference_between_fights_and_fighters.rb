class ChangeReferenceBetweenFightsAndFighters < ActiveRecord::Migration
  def change
  	remove_reference :fights, :fighter    
    add_reference :fighters, :fight, index: true
  end
end

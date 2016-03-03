class DifferentFightersValidator < ActiveModel::Validator
  def validate(fight)
    if fight.fighter2_id.equal?(fight.fighter1_id)
      fight.errors[:fighter1_id] << "Fighter cannot fight with oneself"
    end
  end
end

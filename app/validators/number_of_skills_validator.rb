class NumberOfSkillsValidator < ActiveModel::Validator
  def validate(fighter)
    if fighter.skills.size < 3
      fighter.errors[:skills] << "Please add at least 3 skills to create a fighter"
    elsif fighter.skills.size > 8
      fighter.errors[:skills] << "Fighter can not have more that 8 skills"
    end
  end
end


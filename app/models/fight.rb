class Fight < ActiveRecord::Base
  has_many :fighters
  validates_with DifferentFightersValidator
  before_save :calculate_result
end

def calculate_result
  if Fighter.find(self.fighter1_id).fighting_power > Fighter.find(self.fighter2_id).fighting_power
    self.result = fighter1_id
  elsif Fighter.find(self.fighter1_id).fighting_power < Fighter.find(self.fighter2_id).fighting_power
    self.result = fighter2_id
  else
    self.result = 0
  end
end

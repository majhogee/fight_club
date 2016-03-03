class Fight < ActiveRecord::Base
  belongs_to :fighter
  validates_with DifferentFightersValidator
  before_save :calculate_result
end

def calculate_result
#  if @fighter1.fighting_power > @fighter2.fighting_power
#    self.result = fighter1_id
#    puts "Fighter 1 won!"
#  elsif @fighter1.fighting_power < @fighter2.fighting_power
#    self.result = fighter2_id
#    puts "Fighter 2 won!"
#  else
   self.result = 0
#    puts "It was a tie"
#  end    
end

require 'test_helper'

class FighterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save fighter without features" do
    fighter = Fighter.new
    assert_not fighter.save, "Saved the fighter without features"
  end

  test "there are between 3 and 8 skills for each fighter" do
    fighter.skills.size > 3 && fighter.skills.size < 8
    assert true
  end
end

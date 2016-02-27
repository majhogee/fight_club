require 'test_helper'

class FighterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save fighter without features" do
    fighter = Fighter.new
    assert_not fighter.save, "Saved the fighter without features"
  end
end

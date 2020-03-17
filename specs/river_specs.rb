require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../river")
require_relative("../bear")
#require_relative("../fish")

class TestRiver < MiniTest::Test

  #Using Def
  #Creating River properties
  def setup
  	@river1 = River.new("River Clyde", 5)
  end

  def test_river_has_name()
    assert_equal("River Clyde",@river1.name)
  end

  def test_river_num_fish()
    assert_equal(5,@river1.num_fish)
  end

  # This test returns a 5 fish because it is dependent on bear_specs running.
  def test_river_loses_fish()
    assert_equal(4,@river1.num_fish)
  end



end

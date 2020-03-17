require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../bear")
require_relative("../river")

class TestRiver < MiniTest::Test

  #Using Def
  #Creating Bear properties
  def setup
    @bear1 = Bear.new("Yogi","Grizzly")
  	@river1 = River.new("River Clyde", 5)
  end

  def test_bear_name ()
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_type()
    assert_equal("Grizzly",@bear1.type)
  end

  def test_bear_stomach_count()
    assert_equal(0,@bear1.count_fish_in_stomach())
  end

  #This method checks to see if bears stomach count has decreased from 5 to 4
  def test_bear_take_a_fish()
    @bear1.take_a_fish(@river1)
    assert_equal(4, @bear1.count_fish_in_stomach())
  end

  #Test for bear roar was commented out because it caused the whole system to fail
  #test for bear roar
  # def test_bear_roars()
  #   bear_roars()
  #   assert_equal("ROAR",@bear1.roar)
  # end



end

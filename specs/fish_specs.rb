require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../fish")

class TestFish < MiniTest::Test

  #Using Def
  #Creating fish
  def setup
  	@fish1 = Fish.new("Roach")
  end

  def test_fish_has_name()
    assert_equal("Roach",@fish1.name)
  end


  end

require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test
  def setup
    @team_1 = SportsTeam.new("Lakers", ["LeBron James", "Anthony Davis"], "Frank Vogel")
  end

  def test_get_team_name
    assert_equal("Lakers", @team_1.get_team_name)
  end


end

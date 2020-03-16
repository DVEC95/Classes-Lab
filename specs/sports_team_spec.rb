require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test
  def setup
    @team_1 = SportsTeam.new("Team 1", ["Player 1", "Player 2"], "Coach")
  end

  def test_get_team_name
    assert_equal("Team 1", @team_1.get_team_name)
  end

  def test_get_players
    assert_equal(["Player 1", "Player 2"], @team_1.get_players)
  end


end

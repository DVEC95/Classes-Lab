require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports_team.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
  def setup
    @team_1 = SportsTeam.new('Team 1', ['Player 1', 'Player 2'], 'Coach')
  end

  def test_get_team_name
    assert_equal('Team 1', @team_1.team_name)
  end

  def test_get_players
    assert_equal(['Player 1', 'Player 2'], @team_1.players)
  end

  def test_get_coach
    assert_equal('Coach', @team_1.coach)
  end

  def test_set_coach
    @team_1.coach = 'New Coach'
    assert_equal('New Coach', @team_1.coach)
  end

  def test_add_new_player
    @team_1.add_new_player('Player 3')
    assert_equal(3, @team_1.players.length)
  end

  def test_find_player__found
    assert_equal('Found Player 2.', @team_1.find_player('Player 2'))
  end

  def test_find_player__not_found
    assert_nil(@team_1.find_player('Player 4'))
  end

  def test_points_total__win
    assert_equal(1, @team_1.points_total('win'))
  end

  def test_points_total__lose
    assert_equal(0, @team_1.points_total('lose'))
  end

end

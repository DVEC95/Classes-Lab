require('minitest/autorun')
require('minitest/reporters')

require_relative('../sports_team.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test
  def setup
    @team_1 = SportsTeam.new('Besaid Aurochs', ['Keepa', 'Datto', 'Letty', 'Jassu', 'Botta'], 'Chappu')
  end

  def test_get_team_name
    assert_equal('Besaid Aurochs', @team_1.team_name)
  end

  def test_get_players
    assert_equal(['Keepa', 'Datto', 'Letty', 'Jassu', 'Botta'], @team_1.players)
  end

  def test_get_coach
    assert_equal('Chappu', @team_1.coach)
  end

  def test_set_coach
    @team_1.coach = 'Wakka'
    assert_equal('Wakka', @team_1.coach)
  end

  def test_add_new_player
    @team_1.add_new_player('Tidus')
    assert_equal(6, @team_1.players.length)
  end

  def test_find_player__found
    assert_equal('Found Keepa.', @team_1.find_player('Keepa'))
  end

  def test_find_player__not_found
    assert_nil(@team_1.find_player('Yuna'))
  end

  def test_points_total__win
    assert_equal(3, @team_1.points_total('win'))
  end

  def test_points_total__lose
    assert_equal(0, @team_1.points_total('lose'))
  end

end

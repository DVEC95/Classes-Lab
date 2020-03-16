class SportsTeam
  attr_writer :team_name, :players, :coach
  attr_reader :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end
end

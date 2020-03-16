class SportsTeam
  attr_writer :team_name, :players, :coach
  attr_reader :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def find_player(player_name)
    for player in @players
      if player_name == player
        return "Found #{player_name}."
      end
    end
    return nil
  end

end

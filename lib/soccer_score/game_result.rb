module SoccerScore
  class GameResult
    attr_reader :home_team, :away_team, :home_team_score, :away_team_score

    def initialize(home_team, home_team_score, away_team, away_team_score)
      @home_team       = home_team
      @home_team_score = home_team_score
      @away_team       = away_team
      @away_team_score = away_team_score
    end
  end
end

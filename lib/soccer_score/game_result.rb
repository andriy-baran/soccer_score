module SoccerScore
  class GameResult
    attr_reader :home_team, :away_team, :home_team_score, :away_team_score

    def initialize(home_team, home_team_score, away_team, away_team_score)
      @home_team       = home_team.strip
      @home_team_score = home_team_score.strip
      @away_team       = away_team.strip
      @away_team_score = away_team_score.strip
    end

    def teams_results
      return [TeamResult.new(home_team, :tie),   TeamResult.new(away_team, :tie)  ] if tie?
      return [TeamResult.new(home_team, :win),   TeamResult.new(away_team, :loose)] if home_win?
      return [TeamResult.new(home_team, :loose), TeamResult.new(away_team, :win)  ]
    end


    def tie?
      @home_team_score.to_i == @away_team_score.to_i
    end

    def home_win?
      @home_team_score.to_i > @away_team_score.to_i
    end
  end
end

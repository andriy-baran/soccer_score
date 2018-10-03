module SoccerScore
  class ScorePointsRule
    RESULT_TO_POINTS = {
      1 => 3,
      0 => 1,
      -1 => 0
    }

    def initialize(home_team_score, away_team_score)
      @home_team_score = home_team_score
      @away_team_score = away_team_score
    end

    def home_team_points
      RESULT_TO_POINTS[home_to_away_compartion]
    end

    def away_team_points
      RESULT_TO_POINTS[away_to_home_compartion]
    end

    private

    def home_to_away_compartion
      @home_team_score.to_i <=> @away_team_score.to_i
    end

    def away_to_home_compartion
      @away_team_score.to_i <=> @home_team_score.to_i
    end
  end
end

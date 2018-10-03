module SoccerScore
  class League
    def initialize(games_results, point_rule)
      @games_results = games_results
      @point_rule    = point_rule
      @leader_board  = LeaderBoard.new
    end

    def ranking_table
      @games_results.each do |result|
        points_calc = @point_rule.new(result.home_team_score, result.away_team_score)
        @leader_board.update_result(result.home_team, points_calc.home_team_points)
        @leader_board.update_result(result.away_team, points_calc.away_team_points)
      end
    end
  end
end

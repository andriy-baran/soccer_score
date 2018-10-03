module SoccerScore
  class League
    def initialize(games_results)
      @games_results = games_results
      @leader_board  = LeaderBoard.new
    end

    def ranking_table
      count_teams_points
      @leader_board.ranked_records
    end

    def count_teams_points
      teams_results.each do |team_result|
        @leader_board.update_result(team_result.title, team_result.points)
      end
    end

    def teams_results
      @games_results.map(&:teams_results).flatten
    end
  end
end

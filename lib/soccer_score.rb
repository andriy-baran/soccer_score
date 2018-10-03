require "soccer_score/version"
require "soccer_score/game_result"

module SoccerScore
  def self.rank(games_log)
    game_results = GamesLogParser.new(games_log)
    points_rule  = ScorePointsRule
    league = League.new(game_results, ScorePointsRule)
    league.ranking_table
  end
end

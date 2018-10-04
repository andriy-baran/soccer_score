require "soccer_score/version"
require "soccer_score/team_result"
require "soccer_score/board_record"
require "soccer_score/leader_board"
require "soccer_score/game_result"
require "soccer_score/league"
require "soccer_score/games_log_parser"
require "soccer_score/board_presenter"

module SoccerScore
  def self.rank(games_log)
    game_results = GamesLogParser.new(games_log).call
    league = League.new(game_results)
    records = league.ranked_records
    BoardPresenter.new(records).call
  end
end

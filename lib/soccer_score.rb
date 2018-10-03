require "soccer_score/version"
require "soccer_score/game_result"

module SoccerScore
  def self.rank(input)
    lines = input.split("\n")
    table = Hash.new { |hash, key| key = 0 }
    lines.each do |line|
      game_result = GameResult.new(line)
      table[game_result.home_team] += game_result.home_team_points
      table[game_result.away_team] += game_result.away_team_points
    end
  end
end

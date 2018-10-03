module SoccerScore
  class GamesLogParser
    def initialize(games_log)
      @games_log = games_log.split("\n")
    end

    def call
      @games_log.map { |line| GameResult.new(*line.split(/\,*\s/)) }
    end
  end
end

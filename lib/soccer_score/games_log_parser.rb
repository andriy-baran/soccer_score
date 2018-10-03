module SoccerScore
  class GamesLogParser
    LOGS_PATTERN = /(.*)(\d+)\,(.*)(\d+)/

    def initialize(games_log)
      @games_log = games_log.split("\n")
    end

    def call
      @games_log.map { |line| GameResult.new(*line.scan(LOGS_PATTERN)[0]) }
    end
  end
end

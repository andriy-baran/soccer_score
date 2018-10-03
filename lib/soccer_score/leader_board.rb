module SoccerScore
  class LeaderBoard
    def initialize
      @board = Hash.new { |hash, key| key = 0 }
    end

    def update_result(team, points)
      @board[team] += points
    end

    def ranked_records
      @board.map(&to_object).sort.reverse
    end

    private

    def to_object
      ->(team, points) { BoardRecord.new(team, points) }
    end
  end
end

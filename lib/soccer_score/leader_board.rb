module SoccerScore
  class LeaderBoard
    def initialize
      @board = Hash.new { |hash, key| key = 0 }
    end

    def update_result(team, points)
      @board[team] += points
    end

    def ranked_records
      set_records_ranks.flatten
    end

    private

    def set_records_ranks
      idx = 1
      sorted_records.group_by(&:points).map do |(_, records)|
        records.each { |record| record.rank = idx }
        idx += records.count
        records
      end
    end

    def sorted_records
      @board.map(&to_object).sort.reverse
    end

    def to_object
      ->(team, points) { BoardRecord.new(team, points) }
    end
  end
end

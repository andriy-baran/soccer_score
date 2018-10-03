module SoccerScore
  class LeaderBoard
    def initialize()
      @teams = Hash.new { |hash, key| key = 0 }
    end

    def qualify_result(team, points)
      @teams[team] += points
    end
  end
end

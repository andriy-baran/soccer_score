module SoccerScore
  class BoardRecord
    attr_reader :team, :points

    def initialize(team, points)
      @team   = team
      @points = points
    end

    def <=>(other)
      if points == other.points
        other.team <=> team
      else
        points <=> other.points
      end
    end

    def to_s
      pts = points == 1 ? 'pt' : 'pts'
      "#{team}, #{points} #{pts}"
    end
  end
end

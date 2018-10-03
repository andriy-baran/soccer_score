module SoccerScore
  class TeamResult
    attr_reader :title

    STATE_TO_POINTS = { win: 3, tie: 1, loose: 0 }

    def initialize(title, state)
      @title = title
      @state = state
    end

    def points
      STATE_TO_POINTS[@state]
    end
  end
end

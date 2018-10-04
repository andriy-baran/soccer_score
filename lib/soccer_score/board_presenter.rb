module SoccerScore
  class BoardPresenter
    def initialize(board_records)
      @board_records = board_records
      @formated_records = []
    end

    def call
      @board_records.map(&:to_s).join("\n")
    end
  end
end

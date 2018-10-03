module SoccerScore
  class BoardPresenter
    def initialize(board_records)
      @board_records = board_records
      @formated_records = []
    end

    def call
      idx = 1
      @board_records.group_by(&:points).each do |(_, records)|
        records.each do |record|
          @formated_records << "#{idx}. #{record}"
        end
        idx += records.count
      end
      "#{@formated_records.join("\n")}\n"
    end
  end
end

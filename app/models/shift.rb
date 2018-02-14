class Shift < ApplicationRecord
    belongs_to :worker
    validates :worker_id, :start_date, presence: true

    def start_time
        self.start_date
    end
end

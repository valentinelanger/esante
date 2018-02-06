class Shift < ApplicationRecord
    belongs_to :worker
    validates :user_id, :start_date, presence: true

    def start_time
        self.start_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end

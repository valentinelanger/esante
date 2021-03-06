class Worker < ApplicationRecord
    STATUSES = %w(medic intern interim)
    has_many :shifts

    validates :first_name, :last_name, presence: true
    validates :status, inclusion: { in: STATUSES, allow_nil: false }

    def nb_shifts_this_month
        current_month = Date.today.mon
        nb_shifts = Shift.count { |shift| shift.worker_id == self.id && shift.start_date.mon == current_month }
    end

    def nb_shifts
        current_month = Date.today.mon
        nb_shifts = Shift.count { |shift| shift.worker_id == self.id }
    end

    def name
        "#{self.first_name} #{self.last_name}"
    end
end

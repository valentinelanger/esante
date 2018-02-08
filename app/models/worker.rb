class Worker < ApplicationRecord
    STATUSES = %w(medic intern interim)
    has_many :shifts

    validates :first_name, :last_name, presence: true
    validates :status, inclusion: { in: STATUSES, allow_nil: false }
end

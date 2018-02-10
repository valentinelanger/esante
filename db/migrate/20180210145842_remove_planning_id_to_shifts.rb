class RemovePlanningIdToShifts < ActiveRecord::Migration[5.1]
  def change
    remove_column :shifts, :planning_id, :bigint
  end
end

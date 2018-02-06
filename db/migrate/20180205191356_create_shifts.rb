class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.bigint :planning_id
      t.bigint :user_id
      t.date :start_date

      t.timestamps
    end
  end
end

class RenameColumnUserId < ActiveRecord::Migration[5.1]
  def change
    rename_column :shifts, :user_id, :worker_id
  end
end

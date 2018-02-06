class RenameColumnNamesToWorkers < ActiveRecord::Migration[5.1]
  def change
    rename_column :workers, :firstname, :first_name
    rename_column :workers, :lastname, :last_name
  end
end

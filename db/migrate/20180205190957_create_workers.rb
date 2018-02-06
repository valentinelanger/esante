class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :firstname
      t.string :lastname
      t.string :status

      t.timestamps
    end
  end
end

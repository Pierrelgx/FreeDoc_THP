class Patient < ActiveRecord::Migration[5.2]
  def change
    create_table :patient do |t|
      t.string :first_name, :last_name
      t.timestamps
    end
  end
end
class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :appointment, index: true

      t.timestamps
    end
  end
end

class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      t.string :bell
      t.string :email
      t.string :procedure
      t.string :specialist
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end

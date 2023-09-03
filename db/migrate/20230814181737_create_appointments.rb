class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.bigint :doctor_id, null: false
      t.bigint :patient_id, null: false
      t.string :status, default: 'open'
      t.datetime :schedule_time
      t.string :recommendation

      t.timestamps
    end
  end
end

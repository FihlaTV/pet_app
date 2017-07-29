class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.integer :service_id
      t.integer :guest_id
      t.datetime :created_at
      t.datetime :updated_at
      t.string :status

      t.timestamps
    end
  end
end

class RemoveServicesIdFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :service_id, :integer

    add_column :reservations, :business_service_id, :integer
  end
end

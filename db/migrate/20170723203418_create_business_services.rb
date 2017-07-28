class CreateBusinessServices < ActiveRecord::Migration[5.0]
  def change
    create_table :business_services do |t|
      t.integer :business_unit_id
      t.integer :service_id
      t.decimal :rate

      t.timestamps
    end
  end
end

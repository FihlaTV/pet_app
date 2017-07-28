class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :type
      t.string :rate_unit
      t.string :business_unit_id

      t.timestamps
    end
  end
end

class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.boolean :smoking
      t.integer :square_feet
      t.integer :business_unit_id

      t.timestamps
    end
  end
end

class CreateBusinessUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :business_units do |t|
      t.integer :owner_id
      t.string :status
      t.text :description
      t.string :address
      t.text :bio 
      t.string :headline
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

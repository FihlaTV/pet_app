class CreateAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :amenities do |t|
      t.boolean :patio, default: false
      t.boolean :daily_pic, default: false
      t.boolean :pets_on_bed, default: false
      t.boolean :pets_on_sofas, default: false
      t.boolean :emergency_car, default: false
      t.boolean :children, default: false
      t.integer :home_id

      t.timestamps
    end
  end
end

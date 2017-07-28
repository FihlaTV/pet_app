class AddNeighborhoodIdToBusinessUnits < ActiveRecord::Migration[5.0]
  def change
    add_column :business_units, :neighborhood_id, :integer
  end
end

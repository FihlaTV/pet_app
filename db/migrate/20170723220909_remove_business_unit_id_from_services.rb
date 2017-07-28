class RemoveBusinessUnitIdFromServices < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :business_unit_id, :integer
  end
end

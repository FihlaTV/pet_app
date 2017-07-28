class RemoveTypeFromServices < ActiveRecord::Migration[5.0]
  def change
    remove_column :services, :type, :string

    add_column :services, :title, :string

    add_column :services, :suggested_rate, :decimal

    add_column :services, :minimum_rate, :decimal

  end
end

class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.date :dob
      t.string :species
      t.string :race
      t.integer :size
      t.string :sex

      t.timestamps
    end
  end
end

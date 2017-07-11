class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :scientific_name
      t.string :common_name
      t.string :nickname
      t.string :origin
      t.string :watering_schedule
      t.string :light_requirement

      t.timestamps
    end
  end
end

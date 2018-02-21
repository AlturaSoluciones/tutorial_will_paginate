class CreateAirports < ActiveRecord::Migration[5.1]
  def change
    create_table :airports do |t|
      t.string :iata
      t.string :iso
      t.string :name
      t.string :airport_type
      t.string :size
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end

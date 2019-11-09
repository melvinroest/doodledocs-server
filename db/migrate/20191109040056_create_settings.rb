class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.integer :pencil_thickness
      t.integer :pencil_pressure_sensitivity
      t.integer :eraser_thickness
      t.boolean :annotation_options

      t.timestamps
    end
  end
end

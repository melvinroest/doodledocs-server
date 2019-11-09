class Settings < ApplicationRecord
  validates_presence_of :pencil_thickness, :pencil_pressure_sensitivity, :eraser_thickness
  validates_inclusion_of :annotation_options, in: [true, false]
end
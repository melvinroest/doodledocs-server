class Settings < ApplicationRecord
  validates_presence_of :pencil_thickness, :pencil_pressure_sensitivity, :eraser_thickness, :annotation_options
end
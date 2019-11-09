require 'rails_helper'

RSpec.describe Settings, type: :model do
  #To do: relationships

  it { should validate_presence_of(:pencil_thickness)}
  it { should validate_presence_of(:pencil_pressure_sensitivity)}
  it { should validate_presence_of(:eraser_thickness)}
  it { should validate_presence_of(:annotation_options)}
end
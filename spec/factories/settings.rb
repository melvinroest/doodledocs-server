# spec/factories/users.rb
FactoryBot.define do
  factory :settings do
    pencil_thickness { Faker::Number.digit }
    pencil_pressure_sensitivity { Faker::Number.digit }
    eraser_thickness { Faker::Number.digit }
    annotation_options { Faker::Boolean.boolean }
  end
end


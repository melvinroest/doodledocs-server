# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    fullname { Faker::Name.name }
    username { Faker::Internet.username }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    email_opt_out { Faker::Boolean.boolean }
  end
end
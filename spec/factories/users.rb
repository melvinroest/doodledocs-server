# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    userEmail = Faker::Internet.email
    fullname { Faker::Name.name }
    username { Faker::Internet.username }
    email { userEmail }
    password { Faker::Internet.password }
    email_opt_out { Faker::Boolean.boolean }
  end
end
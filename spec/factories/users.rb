FactoryBot.define do
  factory :user do
    nickname { Faker::FunnyName.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password(min_length: 6)}
    password_confirmation { password }
    admin { Faker::Boolean.boolean(true_ratio: 0.0) }
  end
end

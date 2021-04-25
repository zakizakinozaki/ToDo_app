FactoryBot.define do
  factory :user do
    nickname                 {"太郎"}
    email                    {"test@gmail.com"}
    password                 {"test1234"}
    password_confirmation    {"test1234"}
  end
end
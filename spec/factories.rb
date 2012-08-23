FactoryGirl.define do
  factory :user do
    name     "Erik Hellman"
    email    "erik@example.com"
    password "12rikeri"
    password_confirmation "12rikeri"
  end
end
FactoryBot.define do
  factory :order do
    count { 1 }
    name { "MyString" }
    last_name { "MyString" }
    email { "MyString" }
    phone { "MyString" }
    city { "MyString" }
    stock { "MyString" }
  end
end

FactoryBot.define do
  factory :address do
    street { "MyString" }
    zip_code { "MyString" }
    address_number { "MyString" }
    complement { "MyString" }
    state { "MyString" }
    city { "MyString" }
    neighborhood { "MyString" }
    participant {create(:participant)}
  end
end

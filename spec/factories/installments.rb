FactoryBot.define do
  factory :installment do
    value { 200.00}
    code { "1"}
    invoice { create(:invoice)}
  end
end

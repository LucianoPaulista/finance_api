FactoryBot.define do
  factory :installment do
    value { 200.00}
    sequence { "1"}
    invoice { create(:invoice)}
  end
end

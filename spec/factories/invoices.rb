FactoryBot.define do
  factory :invoice do
    issuance_date {"2021-08-19"}
    observation {"Correspondente  a Internet"}
    total_invoice  { 1000.00}
    participant { create(:participant) }
    invoice_type { create(:invoice_type) }
  end
end

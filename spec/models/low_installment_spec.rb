require 'rails_helper'

RSpec.describe LowInstallment, type: :model do
  it 'Create LowInstallment'  do
    lowInstallment = LowInstallment.new(low_date: "2021-08-23", value: 200.00, installment_id: 1, low_type_id: 1)
    expect(lowInstallment.low_date.to_s).to eq("2021-08-23")
    expect(lowInstallment.value).to eq(200.00)
    expect(lowInstallment.installment_id).to eq(1)
    expect(lowInstallment.low_type_id).to eq(1)
  end
end

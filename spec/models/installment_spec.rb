require 'rails_helper'

RSpec.describe Installment, type: :model do
  context 'Crud installments' do
    it 'Create installments' do
      installment = Installment.create(sequence: "A", value: 100.00, invoice_id: 1)
      expect(installment.sequence).to eq("A")
      expect(installment.value).to eq(100.00)
      expect(installment.invoice_id).to eq(1)
    end
  end
end

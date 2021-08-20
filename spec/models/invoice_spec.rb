require 'rails_helper'

RSpec.describe Invoice, type: :model do
  context 'Crud Invoice' do
    it 'Create Invoice' do
      invoice_type = Invoice.create(issuance_date: "2021-08-20", observation: "Observação teste", total_invoice: 2000.00, participant_id: 1, invoice_type_id: 1)

      expect(invoice_type.issuance_date.to_s).to eq("2021-08-20")
      expect(invoice_type.observation).to eq("Observação teste")
      expect(invoice_type.total_invoice.to_f).to eq(2000.00)
      expect(invoice_type.participant_id).to eq(1)
      expect(invoice_type.invoice_type_id).to eq(1)
    end
  end
end

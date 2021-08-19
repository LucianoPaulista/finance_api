require 'rails_helper'

RSpec.describe 'Invoice_type', type: :model do
  context 'Crud Invoice_type' do
    it 'Create Invoice_type' do
      invoice_type = InvoiceType.create(description: "conta teste")
      expect(invoice_type.description).to eq("conta teste")
    end
  end
end

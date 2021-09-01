require 'rails_helper'

RSpec.describe InstallmentsService do
  context 'Crud installments' do
    it 'Create installments' do
      #invoice = create(:invoice)
      installment = create(:installment, value: 1000.00)
      expect(installment.value).to eq(1000.00)
    end
  end
end
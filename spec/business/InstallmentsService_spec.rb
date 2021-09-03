require 'rails_helper'

RSpec.describe InstallmentsService do
  context 'Crud installments' do
    it 'Create installments success' do
      installment = create(:installment, value: 1000.00)
      expect(installment.value).to eq(1000.00)
    end
  end

  context 'Crud installments' do
    it 'Create installments success' do
      installment = create(:installment, code: "")
      erros =  InstallmentsService.new(installment: installment).validate_code
      expect(erros.present?).to be_truthy
    end
  end
end
require 'rails_helper'

RSpec.describe InstallmentsService do
  context 'Crud installments' do
    it 'Create installments success' do
      installment = build(:installment, value: 1000.00)
      expect(installment.value).to eq(1000.00)
    end
  end

  context 'Validates' do
    it 'Não passou nas validações' do
      installment = build(:installment, code: "")
      erros =  InstallmentsService.new(installment: installment).validate_code
      expect(erros.present?).to be_truthy
    end

    it 'Passou nas validações' do
      installment = build(:installment, code: "A")
      erros =  InstallmentsService.new(installment: installment).validate_code
      expect(erros.nil?).to be_truthy
    end
  end
end
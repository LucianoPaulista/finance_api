require 'rails_helper'

RSpec.describe LowType, type: :model do
  context 'Crud Low_type' do
    it 'Create Low_type' do
      low_type = LowType.create(description: "tipo baixa teste")
      expect(low_type.description).to eq("tipo baixa teste")
    end
  end
end

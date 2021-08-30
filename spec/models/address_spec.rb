require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'create address' do
    participant = build(:participant, name: 'Luciano Paulista', surname: 'Paulista')
    address = build(:address, street: 'Rua Maestro Antônio Guerra', zip_code: '16260000', address_number: '39', complement: 'casa', state: 'SP', city: 'Coroados', participant: participant)
    expect(address.street).to eq 'Rua Maestro Antônio Guerra'
  end
end

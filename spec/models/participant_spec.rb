require 'rails_helper'
RSpec.describe Participant, type: :model do
  it 'create participant' do
    participant = build(:participant, name: 'Luciano Paulista', surname: 'Paulista')
    expect(participant.name).to eq 'Luciano Paulista'
  end
end

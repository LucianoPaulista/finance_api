1.times do
  participant = Participant.create(name: "Luciano", surname: "Paulista")
  3.times do
    @address =  Address.create(street: "Rua Maestro Antônio Guerra", zip_code: "16260000", address_number: "39", complement: "casa", state: "SP", city: "Coroados", neighborhood: "Gentil Bernardes", participant: participant)
  end
end


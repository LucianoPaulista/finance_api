1.times do
  participant = Participant.create(name: "Luciano", surname: "Paulista")
  3.times do
    @address =  Address.create(street: "Rua Maestro Antônio Guerra", zip_code: "16260000", address_number: "39", complement: "casa", state: "SP", city: "Coroados", neighborhood: "Gentil Bernardes", participant: participant)
  end
  invoice_type = InvoiceType.create(description: "Contas a Pagar");
  InvoiceType.create(description: "Contas a Receber");
  InvoiceType.create(description: "Despesas a Pagar");

  LowType.create(description: "Baixa Total")
  LowType.create(description: "Baixa Parcial")
  5.times{
    invoice = Invoice.create(issuance_date: "2021-08-19", observation: "Correspondente  a Internet", total_invoice: 1000.00,  participant: participant, invoice_type: invoice_type )
    for i in 1..5 do
      installment = Installment.create(sequence: i.to_s, value: 200.00, invoice: invoice)
    end
  }
end

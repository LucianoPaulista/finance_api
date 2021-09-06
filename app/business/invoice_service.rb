class InvoiceService
  def initialize(invoice: )
    @invoice = invoice
    @erros = []
  end

  def validate_business
    self.validate_total_invoice
    @erros
  end

  def validate_total_invoice
    error = {}
    vr_total_invoice = @invoice.total_invoice
    error[:vr_total_invoice] = "O valor total da fatura deve ser maior que zero." if vr_total_invoice <= 0.00
    addErros(error)
  end

  private
  def addErros(error)
    @erros.push(error) if error.size > 0
  end
end

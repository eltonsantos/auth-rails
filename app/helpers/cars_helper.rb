module CarsHelper

  def number_to_currency_br(price)
    number_to_currency(price, unit: 'R$ ', separator: ',', delimiter: '.')
  end

end

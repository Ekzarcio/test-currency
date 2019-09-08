require 'open-uri'

class ExvhangeRatesParser

  def api_data
    URI.parse('https://www.tinkoff.ru/api/v1/currency_rates').read
  end

  def json_data
    JSON.parse(api_data)
  end

  def exchange_rates
    json_data.dig('payload', 'rates')
  end

end
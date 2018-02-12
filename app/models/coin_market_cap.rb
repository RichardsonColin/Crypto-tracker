require 'httparty'

class CoinMarketCap
  include HTTParty
  base_uri 'api.coinmarketcap.com/v1/ticker'

  def initialize(ticker, currency)
    @ticker = ticker
    @options = { query: { convert: currency } }
  end

  def response
    self.class.get(@ticker, @options)
  end
end
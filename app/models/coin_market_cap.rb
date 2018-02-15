require 'httparty'

class CoinMarketCap
  include HTTParty
  base_uri 'api.coinmarketcap.com/v1/ticker'

  def initialize(num)
    @options = { query: { limit: num } }
  end

  def response
    self.class.get("/", @options)
  end
end
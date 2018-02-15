require 'httparty'

class CoinMarketCap
  include HTTParty
  base_uri 'api.coinmarketcap.com/v1/ticker'

  def initialize(num)
    @options = { query: { limit: num } }
  end

  def response
    Rails.cache.fetch("cache", expires_in: 10.minutes) do
      self.class.get("/", @options)
    end
  end
end
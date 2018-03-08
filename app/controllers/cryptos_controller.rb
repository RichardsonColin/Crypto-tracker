class CryptosController < ApplicationController
  # def index
  #   @cryptos = Portfolio.find(params[:id]).cryptos
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @cryptos_data = get_crypto_info
  # end

  # def show
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @crypto = @portfolio.cryptos.build
  #   @cryptos_data = get_crypto_info
  # end

  # def new
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @crypto = Crypto.new
  # end

  # def edit
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @crypto = Crypto.find(params[:id])
  # end

  # def create
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @crypto = @portfolio.cryptos.build(crypto_params)
  #   @crypto.portfolio = @portfolio

  #   if @crypto.save
  #     redirect_to @portfolio, notice: "Crypto was successfully added."
  #   else
  #     render @portfolio
  #   end
  # end

  # def update
  #   @portfolio = Portfolio.find(params[:portfolio_id])
  #   @crypto = Crypto.find(params[:id])

  #   if @crypto.update(crypto_params)
  #     redirect_to @crypto
  #   else
  #     render 'update'
  #   end
  # end

  # def destroy
  #   @crypto = Crypto.find(params[:id])
  #   @crypto.destroy

  #   redirect_to cryptos_path
  # end

  private

  def crypto_params
    params.require(:crypto).permit(:crypto, :amount, :portfolio_id)
  end

  def get_crypto_info
    @coin_market_cap = CoinMarketCap.new("0")
    @coin_market_cap.response
  end
end

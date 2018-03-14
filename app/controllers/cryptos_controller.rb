class CryptosController < ApplicationController
  def index
    @portfolio = Portfolio.find(params[:portfolio_id])
    @cryptos = @portfolio.cryptos
    @cryptos_data = get_crypto_info
  end

  def show
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = @portfolio.cryptos.find(params[:id])
    @cryptos_data = get_crypto_info
  end

  def new
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = Crypto.new
    @cryptos_data = get_crypto_info
  end

  def edit
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = Crypto.find(params[:id])
  end

  def create
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = @portfolio.cryptos.build(crypto_params)
    @crypto.portfolio = @portfolio

    if @crypto.save
      redirect_to portfolio_cryptos_path(@portfolio), notice: "Crypto was successfully added."
    else
      render 'new'
    end
  end

  def update
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = Crypto.find(params[:id])

    if @crypto.update(crypto_params)
      redirect_to portfolio_cryptos_path(@portfolio), notice: "Crypto was successfully updated."
    else
      render 'update'
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:portfolio_id])
    @crypto = Crypto.find(params[:id])
    @crypto.destroy

    redirect_to portfolio_cryptos_path(@portfolio), notice: "Crypto was successfully removed."
  end

  private

  def crypto_params
    params.require(:crypto).permit(:crypto, :amount, :portfolio_id)
  end

  def get_crypto_info
    @coin_market_cap = CoinMarketCap.new("0")
    @coin_market_cap.response
  end
end

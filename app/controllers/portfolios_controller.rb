class PortfoliosController < ApplicationController
  before_action :authenticate_user!

  def index
    @portfolios = Portfolio.all
    @cryptos_data = get_crypto_info
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    @crypto = @portfolio.cryptos
    @cryptos_data = get_crypto_info
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def create
    @portfolio = current_user.portfolios.new(portfolio_params)

    if @portfolio.save
      redirect_to @portfolio
    else
      render 'new'
    end
  end

  def update
    @portfolio = Portfolio.find(params[:id])

    if @portfolio.update(portfolio_params)
      redirect_to @portfolio
    else
      render 'edit'
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy

    redirect_to portfolios_path
  end

private
  def portfolio_params
    params.require(:portfolio).permit(:portfolio_name, :description)
  end

  def get_crypto_info
    @coin_market_cap = CoinMarketCap.new("0")
    @coin_market_cap.response
  end
end

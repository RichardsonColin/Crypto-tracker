class CryptosController < ApplicationController
  def index
    @cryptos = Crypto.all
  end

  def show
    @crypto = Crypto.find(params[:id])
  end

  def new
  end

  def create
    @crypto = Crypto.new(crypto_params)

    @crypto.save
    redirect_to @crypto
  end

  private
    def crypto_params
      params.require(:crypto).permit(:crypto, :amount)
    end
end

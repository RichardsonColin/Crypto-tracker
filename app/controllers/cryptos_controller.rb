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

    if @crypto.save
      redirect_to @crypto
    else
      render 'new'
    end
  end

  private
    def crypto_params
      params.require(:crypto).permit(:crypto, :amount)
    end
end

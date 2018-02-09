class CryptosController < ApplicationController
  def new
  end

  def create
    @crypto = Crypto.new(params[:crypto])

    @crypto.save
    redirect_to @crypto
  end
end

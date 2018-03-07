class PortfoliosController < ApplicationController
  def new
  end

  def create
    @portfolio = Portfolio.new(params[:portfolio])

    @portfolio.save
    redirect_to @portfolio
  end
end

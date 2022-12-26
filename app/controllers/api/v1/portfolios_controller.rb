# frozen_string_literal: true

# Description/Explanation of portfolio class
class Api::V1::PortfoliosController < Api::ApplicationController
  before_action :set_portfolio, only: %i[show update destroy]

  # GET /portfolios
  def index
    @portfolios = portfolio.all

    render json: PortfolioResource.new(@portfolios).serialize
  end

  # GET /portfolios/1
  def show
    render json: @portfolio
  end

  # portfolio /portfolios
  def create
    @portfolio = portfolio.new(portfolio_params)

    if @portfolio.save
      render json: @portfolio, status: :created, location: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio = portfolio.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def portfolio_params
    params.require(:portfolio).permit(:title, :description)
  end
end

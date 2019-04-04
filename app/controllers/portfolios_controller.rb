class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  def index
    @portfolios = Portfolio.where(user_id: current_user.id)
  end

  def new
    @portfolio = Portfolio.new
    @job = Job.find(params[:job_id])
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    @job = Job.find(@portfolio.job_id)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: 'Portfolio was successfully created.' }
        format.json { render :index, status: :created }
      else
        format.html { render :new, params: @job }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:job_id, :user_id, :earliest_entry, :salary_expectations, {documents: []})
  end
end

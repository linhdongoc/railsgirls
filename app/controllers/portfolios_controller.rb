class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  def index
    @portfolios = Portfolio.from_user(current_user.id)
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
        format.html { redirect_to action: 'index', notice: 'Portfolio was successfully created.' }
        format.json { render :index, status: :created }
      else
        format.html { render :new, params: @job }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def download
    document = "#{ params[:document] }.#{ params[:format] }"
    content_type =  MIME::Types.type_for(document).first.content_type
    send_file "#{Rails.root}/public/#{document}", type: content_type, disposition: 'inline'
  end

  private
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:job_id, :user_id, :earliest_entry, :salary_expectations, {documents: []})
  end
end

class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show]

  def new
    @applicant = Applicant.new
    @portfolio = Portfolio.new
    @job = Job.find(params[:job_id])
  end

  def create
    @applicant = Applicant.new(applicant_params)
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @applicant, notice: 'Applicant was successfully created.' }
        format.json { render :show, status: :created, location: @applicant }
      else
        format.html { render :new }
        format.json { render json: @applicant.errors, json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  private
  def set_applicant
    @applicant = Applicant.find(params[:id])
  end

  def applicant_params
    params.require(:applicant).permit(:salutation, :firstname, :lastname, :street, :postcode, :place, :birthday, :phone, :email)
  end

  def portfolio_params
    params.require(:portfolio).permit(:job_id, :applicant_id, :earliest_entry, :salary_expectations, :foto, :cover_letter, :cv, {certificates:[]} )
  end
end

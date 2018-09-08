class JobsController < ApplicationController
  before_action :set_job, only: [:show]

  def show
  end

  private
  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description)
  end
end
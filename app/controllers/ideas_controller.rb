class IdeasController < ApplicationController
  before_action :set_idea, only: %i(show edit update destroy)

  def index
    @ideas = Idea.all
  end

  def show
    @comments = @idea.comments.all
    @comment = @idea.comments.build
  end

  def new
    @idea = Idea.new
  end

  def edit ;end

  def create
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to @idea, notice: 'Idea was successfully created.' }
        format.json { render :show, status: :created, location: @idea }
      else
        format.html { render :new }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    csv_path = File.join(Rails.root, 'db', 'idea.csv')
    IdeaAddWorker.perform_async(csv_path)
    format.html { redirect_to ideas_url, notice: 'Ideas getting added to db.' }
    format.json { head :no_content }
  end

  def mass_destroy
    IdeaRemoveWorker.perform_async
    format.html { redirect_to ideas_url, notice: 'Ideas getting removed from db.' }
    format.json { head :no_content }
  end

  private

  def set_idea
    @idea = Idea.find(params[:id])
  end

  def idea_params
    params.require(:idea).permit(:title, :description, :data)
  end
end

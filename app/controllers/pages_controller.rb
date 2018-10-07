class PagesController < ApplicationController
  include PagesHelper

  def index
    @jobs = Job.all
  end

  def menu_card
    @foods = food_list
  end
end

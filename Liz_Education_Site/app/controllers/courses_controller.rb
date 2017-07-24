class CoursesController < ApplicationController
    skip_before_action :authenticate_user!
  
  def index
    @courses = Course.all
  end

  def new
    @courses = Course.all
  end
  
  def show
    @course = Course.find(params[:id])
  end
end

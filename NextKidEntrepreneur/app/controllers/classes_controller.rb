class ClassesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @class = Class.all
  end
  
  def show
    @class = Class.find(params[:id])
  end
end

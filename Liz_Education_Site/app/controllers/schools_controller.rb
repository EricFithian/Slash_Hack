class SchoolsController < ApplicationController
  def index
    @school = current_user.school
  end

  def new
  end

  def create
  end

  def edit
    @school = current_user.school
  end

  def update
    school = current_user.school
    school.assign_attributes(school_params)
    school.save
    redirect_to "/schools"
  end

  private

  def school_params
    params.require(:school).permit(:contact_name, :school_address, :bio)
  end
end

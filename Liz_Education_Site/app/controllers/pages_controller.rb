class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def index

  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact"
  end
end

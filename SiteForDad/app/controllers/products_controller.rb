class ProductsController < ApplicationController
  before_action :authenticate_company_admin!, except: [:index, :new, :create, :show]
  before_action :authenticate_user_admin!, except: [:index, :new, :create, :show]

  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
